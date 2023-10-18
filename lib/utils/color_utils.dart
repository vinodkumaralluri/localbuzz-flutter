import 'package:flutter/material.dart';
import 'package:pro_school_parents/app_theme.dart';

class ColorUtils {
  static String attendanceStatusColorHex(String status) {
    switch (status) {
      case 'Present':
        return '#2ACC00';
        break;
      case 'Absent':
        return '#F47458';
        break;
      case 'Leave':
        return '#FAC14D';
        break;
      default:
        return '#2ACC00';
    }
  }

  static Color attendanceStatusColor(String status) {
    switch (status) {
      case 'Present':
        return AppTheme.green;
        break;
      case 'Absent':
        return AppTheme.red;
        break;
      case 'Leave':
        return AppTheme.yellow;
        break;
      case 'Pending':
        return AppTheme.primary;
        break;
      default:
        return AppTheme.green;
    }
  }

  static Color priorityStatusColor(String priority) {
    switch (priority) {
      case 'Low':
        return AppTheme.green;
        break;
      case 'Medium':
      case 'Normal':
        return AppTheme.yellow;
        break;
      case 'High':
      case 'urgent':
        return AppTheme.red;
        break;
      default:
        return AppTheme.green;
    }
  }

  static Color eventStatusColor(String eventStatus) {
    switch (eventStatus) {
      case 'COMPLETED':
        return AppTheme.green;
        break;
      case 'IN PROGRESS':
        return AppTheme.yellow;
        break;
      case 'UPCOMING':
        return AppTheme.primary;
        break;
      default:
        return AppTheme.green;
    }
  }

  static Color paymentStatusColor(String status) {
    switch (status) {
      case 'Paid':
        return AppTheme.green;
        break;
      case 'Not Paid':
      case 'pending':
        return AppTheme.yellow;
        break;
      case 'No Payment':
        return AppTheme.red;
        break;
      default:
        return AppTheme.green;
    }
  }

  static Color assignmentSubmissionStatus(String submissionStatus) {
    switch (submissionStatus) {
      case 'completed':
        return AppTheme.green;
        break;
      case 'pending':
        return AppTheme.yellow;
        break;
      case 'in progress':
        return AppTheme.primary;
        break;
      default:
        return AppTheme.green;
    }
  }
}
