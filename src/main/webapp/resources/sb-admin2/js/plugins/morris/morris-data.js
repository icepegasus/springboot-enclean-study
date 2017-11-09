var data = [
      { y: '2017-01', a: 50000, 	b: 30000},
      { y: '2017-02', a: 70000,  	b: 40000},
      { y: '2017-03', a: 50000,	    b: 50000},
      { y: '2017-04', a: 50000,  	b: 40000},
      { y: '2017-05', a: 30000,  	b: 30000},
      { y: '2017-06', a: 20000,  	b: 20000},
      { y: '2017-07', a: 55000, 	b: 60000},
      { y: '2017-08', a: 50000, 	b: 50000}
    ],
    config = {
      data: data,
      xkey: 'y',
      ykeys: ['a', 'b'],
      labels: ['일반회원 월평균 실적', '고객님 월평균 실적'],
      fillOpacity: 0.6,
      hideHover: 'auto',
      behaveLikeLine: true,
      resize: true,
      pointFillColors:['#ffffff'],
      pointStrokeColors: ['black'],
      lineColors:['gray','red']
  };
config.element = 'area-chart';
Morris.Area(config);
config.element = 'line-chart';
Morris.Line(config);
config.element = 'bar-chart';
Morris.Bar(config);
config.element = 'stacked';
config.stacked = true;
Morris.Bar(config);
Morris.Donut({
  element: 'pie-chart',
  data: [
    {label: "Friends", value: 30},
    {label: "Allies", value: 15},
    {label: "Enemies", value: 45},
    {label: "Neutral", value: 10}
  ]
});