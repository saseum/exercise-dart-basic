enum Status {
  approved,
  pending,
  rejected,
}

void main() {
  Status status = Status.approved;

  var result = getStatus(status);
  print('Your status is... \'$result\'');
}

String getStatus(Status status) {
  switch (status) {
    case Status.approved:
      print('승인입니다');
      return 'approved';
    case Status.pending:
      print('대기입니다');
      return 'pending';
    case Status.rejected:
      print('거부입니다');
      return 'rejected';
    default:
      return 'unknown';
  }
}
