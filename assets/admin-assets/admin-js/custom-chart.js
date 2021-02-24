   $(document).ready(function () {
		
				
		// chart start
		
		var ctx = document.getElementById('myChart').getContext('2d');
		document.getElementById("myChart").style.height = '300px';
		var chart = new Chart(ctx, {
			// The type of chart we want to create
			type: 'line',

			// The data for our dataset
			data: {
				labels: ["January", "February", "March", "April", "May", "June", "July"],
				datasets: [{
					label: "My First dataset",
					backgroundColor: 'rgb(255, 99, 132)',
					borderColor: 'rgb(255, 99, 132)',
					data: [0, 10, 5, 2, 20, 30, 45],
				}]
			},

			// Configuration options go here
			options: {}
		});
		
		var LineChart = document.getElementById('LineChart').getContext('2d');
		var myLineChart = new Chart(LineChart, {
			type: 'line',
			data: {
				labels: ["January", "February", "March", "April", "May", "June", "July"],
				datasets: [{
						label: "My First dataset",
						backgroundColor: 'rgba(0, 0, 0, 0)',
						borderColor: 'rgb(255, 99, 132)',
						data: [0, 10, 5, 2, 20, 30, 45],
					}]
				},
				options: {}
		});
		
		//chart end
		
		//Doughnut end
		
		var config = {
					type: 'doughnut',
					data: {
						datasets: [{
							data: [0, 10, 20, 30, 45],
							backgroundColor: ['#ff6384','#ff9f40','#ffcd56','#4bc0c0','#36a2eb'],
							label: 'Dataset 1'
						}],
						labels: [
							"Red",
							"Orange",
							"Yellow",
							"Green",
							"Blue"
						]
						},
						options: {
							maintainAspectRatio: false,
							responsive: true,
							legend: {
								position: 'top',
							},
							title: {
								display: true,
								text: 'Chart.js Doughnut Chart'
							},
							animation: {
								animateScale: true,
								animateRotate: true
							}
						}
					};
		
		var Doughnut = document.getElementById("chart-area").getContext("2d");
		
        window.myDoughnut = new Chart(Doughnut, config);
		Doughnut.width = 200;
		
		//Doughnut end
		
   });

