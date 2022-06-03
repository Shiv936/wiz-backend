-- +goose Up
-- +goose StatementBegin
INSERT INTO currencies (iso_code, name, symbol) VALUES ('ALL', 'Albania Lek', 'Lek')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Albania Lek', symbol = 'Lek';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('AFN', 'Afghanistan Afghani', '؋')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Afghanistan Afghani', symbol = '؋';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('ARS', 'Argentina Peso', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Argentina Peso', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('AWG', 'Aruba Guilder', 'ƒ')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Aruba Guilder', symbol = 'ƒ';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('AUD', 'Australia Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Australia Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('AZN', 'Azerbaijan Manat', '₼')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Azerbaijan Manat', symbol = '₼';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BSD', 'Bahamas Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bahamas Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BBD', 'Barbados Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Barbados Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BYN', 'Belarus Ruble', 'Br')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Belarus Ruble', symbol = 'Br';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BZD', 'Belize Dollar', 'BZ$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Belize Dollar', symbol = 'BZ$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BMD', 'Bermuda Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bermuda Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BOB', 'Bolivia Bolíviano', '$b')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bolivia Bolíviano', symbol = '$b';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BAM', 'Bosnia and Herzegovina Convertible Mark', 'KM')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bosnia and Herzegovina Convertible Mark', symbol = 'KM';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BWP', 'Botswana Pula', 'P')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Botswana Pula', symbol = 'P';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BGN', 'Bulgaria Lev', 'лв')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bulgaria Lev', symbol = 'лв';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BRL', 'Brazil Real', 'R$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Brazil Real', symbol = 'R$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('BND', 'Brunei Darussalam Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Brunei Darussalam Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('KHR', 'Cambodia Riel', '៛')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cambodia Riel', symbol = '៛';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('CAD', 'Canada Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Canada Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('KYD', 'Cayman Islands Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cayman Islands Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('CLP', 'Chile Peso', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Chile Peso', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('CNY', 'China Yuan Renminbi', '¥')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'China Yuan Renminbi', symbol = '¥';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('COP', 'Colombia Peso', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Colombia Peso', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('CRC', 'Costa Rica Colon', '₡')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Costa Rica Colon', symbol = '₡';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('HRK', 'Croatia Kuna', 'kn')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Croatia Kuna', symbol = 'kn';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('CUP', 'Cuba Peso', '₱')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cuba Peso', symbol = '₱';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('CZK', 'Czech Republic Koruna', 'Kč')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Czech Republic Koruna', symbol = 'Kč';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('DKK', 'Denmark Krone', 'kr')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Denmark Krone', symbol = 'kr';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('DOP', 'Dominican Republic Peso', 'RD$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Dominican Republic Peso', symbol = 'RD$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('XCD', 'East Caribbean Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'East Caribbean Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('EGP', 'Egypt Pound', '£')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Egypt Pound', symbol = '£';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('SVC', 'El Salvador Colon', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'El Salvador Colon', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('EUR', 'Euro Member Countries', '€')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Euro Member Countries', symbol = '€';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('FKP', 'Falkland Islands (Malvinas) Pound', '£')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Falkland Islands (Malvinas) Pound', symbol = '£';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('FJD', 'Fiji Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Fiji Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('GHS', 'Ghana Cedi', '¢')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Ghana Cedi', symbol = '¢';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('GIP', 'Gibraltar Pound', '£')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Gibraltar Pound', symbol = '£';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('GTQ', 'Guatemala Quetzal', 'Q')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Guatemala Quetzal', symbol = 'Q';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('GGP', 'Guernsey Pound', '£')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Guernsey Pound', symbol = '£';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('GYD', 'Guyana Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Guyana Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('HNL', 'Honduras Lempira', 'L')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Honduras Lempira', symbol = 'L';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('HKD', 'Hong Kong Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Hong Kong Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('HUF', 'Hungary Forint', 'Ft')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Hungary Forint', symbol = 'Ft';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('ISK', 'Iceland Krona', 'kr')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Iceland Krona', symbol = 'kr';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('INR', 'India Rupee', '₹')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'India Rupee', symbol = '₹';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('IDR', 'Indonesia Rupiah', 'Rp')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Indonesia Rupiah', symbol = 'Rp';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('IRR', 'Iran Rial', '﷼')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Iran Rial', symbol = '﷼';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('IMP', 'Isle of Man Pound', '£')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Isle of Man Pound', symbol = '£';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('ILS', 'Israel Shekel', '₪')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Israel Shekel', symbol = '₪';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('JMD', 'Jamaica Dollar', 'J$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Jamaica Dollar', symbol = 'J$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('JPY', 'Japan Yen', '¥')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Japan Yen', symbol = '¥';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('JEP', 'Jersey Pound', '£')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Jersey Pound', symbol = '£';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('KZT', 'Kazakhstan Tenge', 'лв')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Kazakhstan Tenge', symbol = 'лв';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('KPW', 'Korea (North) Won', '₩')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Korea (North) Won', symbol = '₩';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('KRW', 'Korea (South) Won', '₩')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Korea (South) Won', symbol = '₩';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('KGS', 'Kyrgyzstan Som', 'лв')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Kyrgyzstan Som', symbol = 'лв';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('LAK', 'Laos Kip', '₭')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Laos Kip', symbol = '₭';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('LBP', 'Lebanon Pound', '£')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Lebanon Pound', symbol = '£';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('LRD', 'Liberia Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Liberia Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('MKD', 'Macedonia Denar', 'ден')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Macedonia Denar', symbol = 'ден';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('MYR', 'Malaysia Ringgit', 'RM')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Malaysia Ringgit', symbol = 'RM';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('MUR', 'Mauritius Rupee', '₨')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mauritius Rupee', symbol = '₨';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('MXN', 'Mexico Peso', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mexico Peso', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('MNT', 'Mongolia Tughrik', '₮')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mongolia Tughrik', symbol = '₮';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('MNT', 'Moroccan-dirham', '&nbsp;د.إ')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Moroccan-dirham', symbol = '&nbsp;د.إ';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('MZN', 'Mozambique Metical', 'MT')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mozambique Metical', symbol = 'MT';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('NAD', 'Namibia Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Namibia Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('NPR', 'Nepal Rupee', '₨')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Nepal Rupee', symbol = '₨';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('ANG', 'Netherlands Antilles Guilder', 'ƒ')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Netherlands Antilles Guilder', symbol = 'ƒ';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('NZD', 'New Zealand Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'New Zealand Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('NIO', 'Nicaragua Cordoba', 'C$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Nicaragua Cordoba', symbol = 'C$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('NGN', 'Nigeria Naira', '₦')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Nigeria Naira', symbol = '₦';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('NOK', 'Norway Krone', 'kr')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Norway Krone', symbol = 'kr';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('OMR', 'Oman Rial', '﷼')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Oman Rial', symbol = '﷼';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('PKR', 'Pakistan Rupee', '₨')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Pakistan Rupee', symbol = '₨';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('PAB', 'Panama Balboa', 'B/.')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Panama Balboa', symbol = 'B/.';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('PYG', 'Paraguay Guarani', 'Gs')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Paraguay Guarani', symbol = 'Gs';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('PEN', 'Peru Sol', 'S/.')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Peru Sol', symbol = 'S/.';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('PHP', 'Philippines Peso', '₱')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Philippines Peso', symbol = '₱';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('PLN', 'Poland Zloty', 'zł')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Poland Zloty', symbol = 'zł';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('QAR', 'Qatar Riyal', '﷼')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Qatar Riyal', symbol = '﷼';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('RON', 'Romania Leu', 'lei')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Romania Leu', symbol = 'lei';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('RUB', 'Russia Ruble', '₽')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Russia Ruble', symbol = '₽';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('SHP', 'Saint Helena Pound', '£')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Saint Helena Pound', symbol = '£';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('SAR', 'Saudi Arabia Riyal', '﷼')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Saudi Arabia Riyal', symbol = '﷼';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('RSD', 'Serbia Dinar', 'Дин.')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Serbia Dinar', symbol = 'Дин.';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('SCR', 'Seychelles Rupee', '₨')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Seychelles Rupee', symbol = '₨';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('SGD', 'Singapore Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Singapore Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('SBD', 'Solomon Islands Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Solomon Islands Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('SOS', 'Somalia Shilling', 'S')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Somalia Shilling', symbol = 'S';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('KRW', 'South Korean Won', '₩')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'South Korean Won', symbol = '₩';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('ZAR', 'South Africa Rand', 'R')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'South Africa Rand', symbol = 'R';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('LKR', 'Sri Lanka Rupee', '₨')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Sri Lanka Rupee', symbol = '₨';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('SEK', 'Sweden Krona', 'kr')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Sweden Krona', symbol = 'kr';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('CHF', 'Switzerland Franc', 'CHF')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Switzerland Franc', symbol = 'CHF';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('SRD', 'Suriname Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Suriname Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('SYP', 'Syria Pound', '£')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Syria Pound', symbol = '£';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('TWD', 'Taiwan New Dollar', 'NT$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Taiwan New Dollar', symbol = 'NT$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('THB', 'Thailand Baht', '฿')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Thailand Baht', symbol = '฿';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('TTD', 'Trinidad and Tobago Dollar', 'TT$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Trinidad and Tobago Dollar', symbol = 'TT$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('TRY', 'Turkey Lira', '₺')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Turkey Lira', symbol = '₺';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('TVD', 'Tuvalu Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Tuvalu Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('UAH', 'Ukraine Hryvnia', '₴')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Ukraine Hryvnia', symbol = '₴';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('AED', 'UAE-Dirham', '&nbsp;د.إ')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'UAE-Dirham', symbol = '&nbsp;د.إ';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('GBP', 'United Kingdom Pound', '£')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'United Kingdom Pound', symbol = '£';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('USD', 'United States Dollar', '$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'United States Dollar', symbol = '$';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('UYU', 'Uruguay Peso', '$U')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Uruguay Peso', symbol = '$U';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('UZS', 'Uzbekistan Som', 'лв')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Uzbekistan Som', symbol = 'лв';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('VEF', 'Venezuela Bolívar', 'Bs')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Venezuela Bolívar', symbol = 'Bs';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('VND', 'Viet Nam Dong', '₫')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Viet Nam Dong', symbol = '₫';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('YER', 'Yemen Rial', '﷼')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Yemen Rial', symbol = '﷼';
INSERT INTO currencies (iso_code, name, symbol) VALUES ('ZWD', 'Zimbabwe Dollar', 'Z$')
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Zimbabwe Dollar', symbol = 'Z$';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM currencies WHERE iso_code = 'ALL';
DELETE FROM currencies WHERE iso_code = 'AFN';
DELETE FROM currencies WHERE iso_code = 'ARS';
DELETE FROM currencies WHERE iso_code = 'AWG';
DELETE FROM currencies WHERE iso_code = 'AUD';
DELETE FROM currencies WHERE iso_code = 'AZN';
DELETE FROM currencies WHERE iso_code = 'BSD';
DELETE FROM currencies WHERE iso_code = 'BBD';
DELETE FROM currencies WHERE iso_code = 'BYN';
DELETE FROM currencies WHERE iso_code = 'BZD';
DELETE FROM currencies WHERE iso_code = 'BMD';
DELETE FROM currencies WHERE iso_code = 'BOB';
DELETE FROM currencies WHERE iso_code = 'BAM';
DELETE FROM currencies WHERE iso_code = 'BWP';
DELETE FROM currencies WHERE iso_code = 'BGN';
DELETE FROM currencies WHERE iso_code = 'BRL';
DELETE FROM currencies WHERE iso_code = 'BND';
DELETE FROM currencies WHERE iso_code = 'KHR';
DELETE FROM currencies WHERE iso_code = 'CAD';
DELETE FROM currencies WHERE iso_code = 'KYD';
DELETE FROM currencies WHERE iso_code = 'CLP';
DELETE FROM currencies WHERE iso_code = 'CNY';
DELETE FROM currencies WHERE iso_code = 'COP';
DELETE FROM currencies WHERE iso_code = 'CRC';
DELETE FROM currencies WHERE iso_code = 'HRK';
DELETE FROM currencies WHERE iso_code = 'CUP';
DELETE FROM currencies WHERE iso_code = 'CZK';
DELETE FROM currencies WHERE iso_code = 'DKK';
DELETE FROM currencies WHERE iso_code = 'DOP';
DELETE FROM currencies WHERE iso_code = 'XCD';
DELETE FROM currencies WHERE iso_code = 'EGP';
DELETE FROM currencies WHERE iso_code = 'SVC';
DELETE FROM currencies WHERE iso_code = 'EUR';
DELETE FROM currencies WHERE iso_code = 'FKP';
DELETE FROM currencies WHERE iso_code = 'FJD';
DELETE FROM currencies WHERE iso_code = 'GHS';
DELETE FROM currencies WHERE iso_code = 'GIP';
DELETE FROM currencies WHERE iso_code = 'GTQ';
DELETE FROM currencies WHERE iso_code = 'GGP';
DELETE FROM currencies WHERE iso_code = 'GYD';
DELETE FROM currencies WHERE iso_code = 'HNL';
DELETE FROM currencies WHERE iso_code = 'HKD';
DELETE FROM currencies WHERE iso_code = 'HUF';
DELETE FROM currencies WHERE iso_code = 'ISK';
DELETE FROM currencies WHERE iso_code = 'INR';
DELETE FROM currencies WHERE iso_code = 'IDR';
DELETE FROM currencies WHERE iso_code = 'IRR';
DELETE FROM currencies WHERE iso_code = 'IMP';
DELETE FROM currencies WHERE iso_code = 'ILS';
DELETE FROM currencies WHERE iso_code = 'JMD';
DELETE FROM currencies WHERE iso_code = 'JPY';
DELETE FROM currencies WHERE iso_code = 'JEP';
DELETE FROM currencies WHERE iso_code = 'KZT';
DELETE FROM currencies WHERE iso_code = 'KPW';
DELETE FROM currencies WHERE iso_code = 'KRW';
DELETE FROM currencies WHERE iso_code = 'KGS';
DELETE FROM currencies WHERE iso_code = 'LAK';
DELETE FROM currencies WHERE iso_code = 'LBP';
DELETE FROM currencies WHERE iso_code = 'LRD';
DELETE FROM currencies WHERE iso_code = 'MKD';
DELETE FROM currencies WHERE iso_code = 'MYR';
DELETE FROM currencies WHERE iso_code = 'MUR';
DELETE FROM currencies WHERE iso_code = 'MXN';
DELETE FROM currencies WHERE iso_code = 'MNT';
DELETE FROM currencies WHERE iso_code = 'MNT';
DELETE FROM currencies WHERE iso_code = 'MZN';
DELETE FROM currencies WHERE iso_code = 'NAD';
DELETE FROM currencies WHERE iso_code = 'NPR';
DELETE FROM currencies WHERE iso_code = 'ANG';
DELETE FROM currencies WHERE iso_code = 'NZD';
DELETE FROM currencies WHERE iso_code = 'NIO';
DELETE FROM currencies WHERE iso_code = 'NGN';
DELETE FROM currencies WHERE iso_code = 'NOK';
DELETE FROM currencies WHERE iso_code = 'OMR';
DELETE FROM currencies WHERE iso_code = 'PKR';
DELETE FROM currencies WHERE iso_code = 'PAB';
DELETE FROM currencies WHERE iso_code = 'PYG';
DELETE FROM currencies WHERE iso_code = 'PEN';
DELETE FROM currencies WHERE iso_code = 'PHP';
DELETE FROM currencies WHERE iso_code = 'PLN';
DELETE FROM currencies WHERE iso_code = 'QAR';
DELETE FROM currencies WHERE iso_code = 'RON';
DELETE FROM currencies WHERE iso_code = 'RUB';
DELETE FROM currencies WHERE iso_code = 'SHP';
DELETE FROM currencies WHERE iso_code = 'SAR';
DELETE FROM currencies WHERE iso_code = 'RSD';
DELETE FROM currencies WHERE iso_code = 'SCR';
DELETE FROM currencies WHERE iso_code = 'SGD';
DELETE FROM currencies WHERE iso_code = 'SBD';
DELETE FROM currencies WHERE iso_code = 'SOS';
DELETE FROM currencies WHERE iso_code = 'KRW';
DELETE FROM currencies WHERE iso_code = 'ZAR';
DELETE FROM currencies WHERE iso_code = 'LKR';
DELETE FROM currencies WHERE iso_code = 'SEK';
DELETE FROM currencies WHERE iso_code = 'CHF';
DELETE FROM currencies WHERE iso_code = 'SRD';
DELETE FROM currencies WHERE iso_code = 'SYP';
DELETE FROM currencies WHERE iso_code = 'TWD';
DELETE FROM currencies WHERE iso_code = 'THB';
DELETE FROM currencies WHERE iso_code = 'TTD';
DELETE FROM currencies WHERE iso_code = 'TRY';
DELETE FROM currencies WHERE iso_code = 'TVD';
DELETE FROM currencies WHERE iso_code = 'UAH';
DELETE FROM currencies WHERE iso_code = 'AED';
DELETE FROM currencies WHERE iso_code = 'GBP';
DELETE FROM currencies WHERE iso_code = 'USD';
DELETE FROM currencies WHERE iso_code = 'UYU';
DELETE FROM currencies WHERE iso_code = 'UZS';
DELETE FROM currencies WHERE iso_code = 'VEF';
DELETE FROM currencies WHERE iso_code = 'VND';
DELETE FROM currencies WHERE iso_code = 'YER';
DELETE FROM currencies WHERE iso_code = 'ZWD';

-- +goose StatementEnd
