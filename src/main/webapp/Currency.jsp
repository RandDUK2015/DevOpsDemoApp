<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Demo</title>

        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
            $(document).ready(function() {                        
                $('#submit').click(function(event) {  
                   var from=$('#from').val();
                   var to=$('#to').val();
                	$.get('ActionServlet',{from:from,to:to},function(responseText) { 
                        $('#welcometext').text(responseText); 
                        //alert(responseText);
                    });
                });
            });
        </script>
</head>
<body>
<form id="form1">
<h1>Currency Converter</h1>
<label for="from">From:</label>
        <select name="from" id="from">
          <option selected="selected" value="EUR">Euro - EUR</option>
          <option value="USD">United States Dollars - USD</option>
          <option value="GBP">United Kingdom Pounds - GBP</option>
          <option value="CAD">Canada Dollars - CAD</option>
          <option value="AUD">Australia Dollars - AUD</option>
          <option value="JPY">Japan Yen - JPY</option>
          <option value="INR">India Rupees - INR</option>
          <option value="NZD">New Zealand Dollars - NZD</option>
          <option value="CHF">Switzerland Francs - CHF</option>
          <option value="ZAR">South Africa Rand - ZAR</option>
          <option value="DZD">Algeria Dinars - DZD</option>
          <option value="ARS">Argentina Pesos - ARS</option>
          <option value="AUD">Australia Dollars - AUD</option>
          <option value="BHD">Bahrain Dinars - BHD</option>
          <option value="BRL">Brazil Reais - BRL</option>
          <option value="BGN">Bulgaria Leva - BGN</option>
          <option value="CAD">Canada Dollars - CAD</option>
          <option value="CLP">Chile Pesos - CLP</option>
          <option value="CNY">China Yuan Renminbi - CNY</option>
          <option value="CNY">RMB (China Yuan Renminbi) - CNY</option>
          <option value="COP">Colombia Pesos - COP</option>
          <option value="CRC">Costa Rica Colones - CRC</option>
          <option value="HRK">Croatia Kuna - HRK</option>
          <option value="CZK">Czech Republic Koruny - CZK</option>
          <option value="DKK">Denmark Kroner - DKK</option>
          <option value="DOP">Dominican Republic Pesos - DOP</option>
          <option value="EGP">Egypt Pounds - EGP</option>
          <option value="EEK">Estonia Krooni - EEK</option>
          <option value="EUR">Euro - EUR</option>
          <option value="FJD">Fiji Dollars - FJD</option>
          <option value="HKD">Hong Kong Dollars - HKD</option>
          <option value="HUF">Hungary Forint - HUF</option>
          <option value="ISK">Iceland Kronur - ISK</option>
          <option value="INR">India Rupees - INR</option>
          <option value="IDR">Indonesia Rupiahs - IDR</option>
          <option value="ILS">Israel New Shekels - ILS</option>
          <option value="JMD">Jamaica Dollars - JMD</option>
          <option value="JPY">Japan Yen - JPY</option>
          <option value="JOD">Jordan Dinars - JOD</option>
          <option value="KES">Kenya Shillings - KES</option>
          <option value="KRW">Korea (South) Won - KRW</option>
          <option value="KWD">Kuwait Dinars - KWD</option>
          <option value="LBP">Lebanon Pounds - LBP</option>
          <option value="MYR">Malaysia Ringgits - MYR</option>
          <option value="MUR">Mauritius Rupees - MUR</option>
          <option value="MXN">Mexico Pesos - MXN</option>
          <option value="MAD">Morocco Dirhams - MAD</option>
          <option value="NZD">New Zealand Dollars - NZD</option>
          <option value="NOK">Norway Kroner - NOK</option>
          <option value="OMR">Oman Rials - OMR</option>
          <option value="PKR">Pakistan Rupees - PKR</option>
          <option value="PEN">Peru Nuevos Soles - PEN</option>
          <option value="PHP">Philippines Pesos - PHP</option>
          <option value="PLN">Poland Zlotych - PLN</option>
          <option value="QAR">Qatar Riyals - QAR</option>
          <option value="RON">Romania New Lei - RON</option>
          <option value="RUB">Russia Rubles - RUB</option>
          <option value="SAR">Saudi Arabia Riyals - SAR</option>
          <option value="SGD">Singapore Dollars - SGD</option>
          <option value="SKK">Slovakia Koruny - SKK</option>
          <option value="ZAR">South Africa Rand - ZAR</option>
          <option value="KRW">South Korea Won - KRW</option>
          <option value="LKR">Sri Lanka Rupees - LKR</option>
          <option value="SEK">Sweden Kronor - SEK</option>
          <option value="CHF">Switzerland Francs - CHF</option>
          <option value="TWD">Taiwan New Dollars - TWD</option>
          <option value="THB">Thailand Baht - THB</option>
          <option value="TTD">Trinidad and Tobago Dollars - TTD</option>
          <option value="TND">Tunisia Dinars - TND</option>
          <option value="TRY">Turkey Lira - TRY</option>
          <option value="AED">United Arab Emirates Dirhams - AED</option>
          <option value="GBP">United Kingdom Pounds - GBP</option>
          <option value="USD">United States Dollars - USD</option>
          <option value="VEB">Venezuela Bolivares - VEB</option>
          <option value="VND">Vietnam Dong - VND</option>
          <option value="ZMK">Zambia Kwacha - ZMK</option>
        </select>
 
     
 
        <label for="to">To:</label>
        <select name="to" id="to">
          <option value="USD">United States Dollars - USD</option>
          <option value="GBP">United Kingdom Pounds - GBP</option>
          <option value="CAD">Canada Dollars - CAD</option>
          <option value="AUD">Australia Dollars - AUD</option>
          <option value="JPY">Japan Yen - JPY</option>
          <option value="INR">India Rupees - INR</option>
          <option value="NZD">New Zealand Dollars - NZD</option>
          <option value="CHF">Switzerland Francs - CHF</option>
          <option value="ZAR">South Africa Rand - ZAR</option>
          <option value="DZD">Algeria Dinars - DZD</option>
          <option value="ARS">Argentina Pesos - ARS</option>
          <option value="AUD">Australia Dollars - AUD</option>
          <option value="BHD">Bahrain Dinars - BHD</option>
          <option value="BRL">Brazil Reais - BRL</option>
          <option value="BGN">Bulgaria Leva - BGN</option>
          <option value="CAD">Canada Dollars - CAD</option>
          <option value="CLP">Chile Pesos - CLP</option>
          <option value="CNY">China Yuan Renminbi - CNY</option>
          <option value="CNY">RMB (China Yuan Renminbi) - CNY</option>
          <option value="COP">Colombia Pesos - COP</option>
          <option value="CRC">Costa Rica Colones - CRC</option>
          <option value="HRK">Croatian Kuna - HRK</option>
          <option value="CZK">Czech Republic Koruny - CZK</option>
          <option value="DKK">Denmark Kroner - DKK</option>
          <option value="DOP">Dominican Republic Pesos - DOP</option>
          <option value="EGP">Egypt Pounds - EGP</option>
          <option value="EEK">Estonia Krooni - EEK</option>
          <option value="EUR">Euro - EUR</option>
          <option value="FJD">Fiji Dollars - FJD</option>
          <option value="HKD">Hong Kong Dollars - HKD</option>
          <option value="HUF">Hungary Forint - HUF</option>
          <option value="ISK">Iceland Kronur - ISK</option>
          <option value="INR">India Rupees - INR</option>
          <option value="IDR">Indonesia Rupiahs - IDR</option>
          <option value="ILS">Israel New Shekels - ILS</option>
          <option value="JMD">Jamaica Dollars - JMD</option>
          <option value="JPY">Japan Yen - JPY</option>
          <option value="JOD">Jordan Dinars - JOD</option>
          <option value="KES">Kenya Shillings - KES</option>
          <option value="KRW">Korea (South) Won - KRW</option>
          <option value="KWD">Kuwait Dinars - KWD</option>
          <option value="LBP">Lebanon Pounds - LBP</option>
          <option value="MYR">Malaysia Ringgits - MYR</option>
          <option value="MUR">Mauritius Rupees - MUR</option>
          <option value="MXN">Mexico Pesos - MXN</option>
          <option value="MAD">Morocco Dirhams - MAD</option>
          <option value="NZD">New Zealand Dollars - NZD</option>
          <option value="NOK">Norway Kroner - NOK</option>
          <option value="OMR">Oman Rials - OMR</option>
          <option value="PKR">Pakistan Rupees - PKR</option>
          <option value="PEN">Peru Nuevos Soles - PEN</option>
          <option value="PHP">Philippines Pesos - PHP</option>
          <option value="PLN">Poland Zlotych - PLN</option>
          <option value="QAR">Qatar Riyals - QAR</option>
          <option value="RON">Romania New Lei - RON</option>
          <option value="RUB">Russia Rubles - RUB</option>
          <option value="SAR">Saudi Arabia Riyals - SAR</option>
          <option value="SGD">Singapore Dollars - SGD</option>
          <option value="SKK">Slovakia Koruny - SKK</option>
          <option value="ZAR">South Africa Rand - ZAR</option>
          <option value="KRW">South Korea Won - KRW</option>
          <option value="LKR">Sri Lanka Rupees - LKR</option>
          <option value="SEK">Sweden Kronor - SEK</option>
          <option value="CHF">Switzerland Francs - CHF</option>
          <option value="TWD">Taiwan New Dollars - TWD</option>
          <option value="THB">Thailand Baht - THB</option>
          <option value="TTD">Trinidad and Tobago Dollars - TTD</option>
          <option value="TND">Tunisia Dinars - TND</option>
          <option value="TRY">Turkey Lira - TRY</option>
          <option value="AED">United Arab Emirates Dirhams - AED</option>
          <option value="GBP">United Kingdom Pounds - GBP</option>
          <option value="USD">United States Dollars - USD</option>
          <option value="VEB">Venezuela Bolivares - VEB</option>
          <option value="VND">Vietnam Dong - VND</option>
          <option value="ZMK">Zambia Kwacha - ZMK</option>
        </select>
 
<input type="button" id="submit" value="Submit"/>
<br/>
<div id="welcometext">
</div>
</form>
</body>
</html>