
(function () {
      
      var data = {
  "xScale": "ordinal",
  "yScale": "linear",
  "main": [
    {
      "className": ".pizza",
      "data": [
        {
          "x": "Pepperoni",
          "y": 4
        },
        {
          "x": "Cheese",
          "y": 8
        }
      ]
    }
  ]
};
      var myChart = new xChart('bar', data, '#example1');
      
    }());

(function () {
      
      var data = {
  "xScale": "ordinal",
  "yScale": "linear",
  "main": [
    {
      "className": ".pizza",
      "data": [
        {
          "x": "Pepperoni",
          "y": 4
        },
        {
          "x": "Cheese",
          "y": 8
        }
      ]
    },
    {
      "className": ".pizza",
      "data": [
        {
          "x": "Pepperoni",
          "y": 6
        },
        {
          "x": "Cheese",
          "y": 5
        }
      ]
    }
  ]
};
      var myChart = new xChart('bar', data, '#example2');
      
    }());

