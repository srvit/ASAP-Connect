import 'dart:developer' as dev;
import 'package:asap/model/interested_areas_model.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/view/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:asap/widgets/snackbar_messenger.dart';
import 'package:asap/repositories/interested_areas_repo.dart';
import 'package:asap/view_model/registration_controller.dart';
import 'package:either_dart/either.dart';
import 'package:get/get.dart';

class InterestedAreasController extends GetxController {
  RegistrationController controller = Get.put(RegistrationController());
  late final String fullName;
  List<InterestArea> interestedAreas = [];
  int selectedChipIndex = -1; // RxInt to enable reactivity
  List<int> selectedChipIndices = [];
  List<InterestArea> updatedInterestedAreas = [];
  final showLoading = false.obs;

  @override
  onInit() {
    super.onInit();
    fetchInterestedAreas();
    fullName = SharedPref.instence.getName()!;
  }

  void fetchInterestedAreas() async {
    final either = InterestedRepo().getAreas();
    either.fold(
      (error) {
        dev.log("error fetching Interested Areas $error");
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
      },
      (response) async {
        if (response['status'] == "OK") {
          dev.log("fetching Interested Areas");
          // Map each element of response['data'] to InterestArea and assign to interestedAreas
          interestedAreas = List<InterestArea>.from(response['data']
              .map((dynamic item) => InterestArea.fromJson(item)));
          update();
        } else {
          dev.log("error fetching Interested Areas ");
          // Handle the error scenario as needed
        }
      },
    );
  }

  void updateInterestedAreas() async {
    showLoading.value = true;
    List<String> ids =
        updatedInterestedAreas.map((interestArea) => interestArea.id).toList();
    Map<String, dynamic> requestBody = {
      "interestedAreas": ids,
    };
    final either = InterestedRepo().updateAreas(requestBody);
    either.fold(
      (error) {
        dev.log("error updating Interested Areas $error");
        showLoading.value = false;
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
      },
      (response) async {
        if (response['status'] == "OK") {
          showLoading.value = false;
          dev.log("updating Interested Areas");
          Get.showSnackbar(
            getxSnackbar(message: response['message'], isError: false),
          );
          Get.to(DashboardContainerScreen());
        } else {
          showLoading.value = false;
          Get.showSnackbar(
            getxSnackbar(message: response['message'], isError: true),
          );
          dev.log("error fetching Interested Areas ");
          // Handle the error scenario as needed
        }
      },
    );
  }

  // Method to set the selected chip index
  void setSelectedChip(int index) {
    if (!selectedChipIndices.contains(index)) {
      selectedChipIndices.add(index);
      updatedInterestedAreas.add(interestedAreas[index]);
      dev.log("indices${selectedChipIndices}");
      dev.log("models${updatedInterestedAreas.length}");
    } else {
      selectedChipIndices.remove(index);
      updatedInterestedAreas
          .removeWhere((element) => element == interestedAreas[index]);
      dev.log("indices${selectedChipIndices}");
      dev.log("models${updatedInterestedAreas.length}");
    }
    update();
  }
}
