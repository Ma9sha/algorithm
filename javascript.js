
function load(){
  const mydata = JSON.parse(data);
  return mydata
}
  
    const ctx = document.getElementById('scatterChart');
    const data1 = load();
    console.log(data1)

    const scatterChart = new Chart(ctx, {
    type: 'scatter',
    data: {
        
        datasets: [{
            label: 'Time Dataset',
            
        data: data1
            
              }]
            },
    options: {
        scales: {
            xAxes: [{
                type: 'linear',
                position: 'bottom'
            }]
        }
    }
});
