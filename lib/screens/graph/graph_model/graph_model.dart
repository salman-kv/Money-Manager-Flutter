class GraphModel{
  double income;
  double expense;
  GraphModel({required this.income,required this.expense});
}

List<GraphModel> getGraphData(){
  final List<GraphModel> data=[
    GraphModel(income: 1000, expense: 100),
    GraphModel(income: 1100, expense: 150),
    GraphModel(income: 1000, expense: 700),
    GraphModel(income: 1400, expense: 300),
    GraphModel(income: 300, expense: 500),
    GraphModel(income: 2000, expense: 1000),
    GraphModel(income: 1000, expense: 500),

  ];
  return data;
}