class ImageUtils {
  static String getSubjectImagePath(String name) {
    switch (name) {
      case 'Geography':
        return 'assets/images/schools/academics/geography.svg';
        break;
      case 'Chemistry':
        return 'assets/images/schools/academics/chemistry.svg';
        break;
      case 'History':
        return 'assets/images/schools/academics/history.svg';
        break;
      case 'Mathematics':
      case 'Maths':
        return 'assets/images/schools/academics/maths.svg';
        break;
      case 'Art':
        return 'assets/images/schools/academics/art.svg';
        break;
      default:
        return 'assets/images/schools/academics/art.svg';
    }
  }

  static String getSubjectMinImagePath(String name) {
    switch (name) {
      case 'Geography':
        return 'assets/images/schools/academics/geography_min.svg';
        break;
      case 'Chemistry':
        return 'assets/images/schools/academics/chemistry_min.svg';
        break;
      case 'History':
        return 'assets/images/schools/academics/history_min.svg';
        break;
      case 'Mathematics':
      case 'Maths':
        return 'assets/images/schools/academics/maths_min.svg';
        break;
      case 'Art':
        return 'assets/images/schools/academics/art_min.svg';
        break;
      default:
        return 'assets/images/schools/academics/art_min.svg';
    }
  }

  static String getModuleCardImagePath(String title) {
    switch (title) {
      case 'Attendance':
        return 'assets/images/schools/attendance_icon.png';
        break;
      case 'Academics':
        return 'assets/images/schools/academics_icon.png';
        break;
      case 'Assessments':
        return 'assets/images/schools/assessments_icon.png';
        break;
      case 'Examinations':
        return 'assets/images/schools/examinations_icon.png';
        break;
      case 'TimeTable':
        return 'assets/images/schools/timetable_icon.png';
        break;
      case 'Events':
        return 'assets/images/schools/events_icon.png';
        break;
      case 'Fee':
        return 'assets/images/schools/fees_icon.png';
        break;
      default:
        return 'assets/images/schools/attendance_icon.png';
    }
  }

  static String getHomeScheduleIcon(String type) {
    switch (type) {
      case 'Timetable':
        return 'assets/icons/home_schedule_timetable_icon.png';
        break;
      case 'Meeting':
        return 'assets/icons/home_schedule_meeting_icon.png';
        break;
      case 'Reminder':
        return 'assets/icons/home_schedule_reminder_icon.png';
        break;
      default:
        return 'assets/icons/home_schedule_timetable_icon.png';
    }
  }

  static String getHomeAssignmentBackground(String status) {
    switch (status) {
      case 'completed':
        return 'assets/images/home/assignments/completed_assignment_bg.png';
        break;
      case 'pending':
        return 'assets/images/home/assignments/pending_assignment_bg.png';
        break;
      case 'in progress':
        return 'assets/images/home/assignments/in_progress_assignment_bg.png';
        break;
      default:
        return 'assets/images/home/tasks/low_task_bg.png';
    }
  }
}
