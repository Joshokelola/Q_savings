class QuiiickSavingModel {
  final String
      savingsType; //TODO:MIGHT BE A GOOD IDEA TO MAKE THIS AN ENUM LATER ON
  final String totalAvailable;

  QuiiickSavingModel({required this.savingsType, required this.totalAvailable});
}

List<QuiiickSavingModel> qmodel = <QuiiickSavingModel>[
  QuiiickSavingModel(savingsType: 'Total Savings', totalAvailable: '\$2000'),
  QuiiickSavingModel(savingsType: 'Total Investments', totalAvailable: '\$121'),
  QuiiickSavingModel(savingsType: 'Quiiick Dollar', totalAvailable: '\$1000'),
  QuiiickSavingModel(savingsType: 'Quiiick Naira', totalAvailable: '\N100000'),
  QuiiickSavingModel(savingsType: 'Abeg App', totalAvailable: '\$1000'),
];

var items = [
  'Total Savings',
  'Total Investments',
  'Flex Dollar',
  'Flex Naira',
  'Abeg App'
];
