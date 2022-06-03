-- +goose Up
-- +goose StatementBegin
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AC', 'Ascension Island', 'ACS', 247)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Ascension Island', iso_3 = 'ACS', calling_code = 247;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AD', 'Andorra', 'AND', 376)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Andorra', iso_3 = 'AND', calling_code = 376;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AE', 'United Arab Emirates', 'ARE', 971)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'United Arab Emirates', iso_3 = 'ARE', calling_code = 971;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AF', 'Afghanistan', 'AFG', 93)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Afghanistan', iso_3 = 'AFG', calling_code = 93;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AG', 'Antigua and Barbuda', 'ATG', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Antigua and Barbuda', iso_3 = 'ATG', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AI', 'Anguilla', 'AIA', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Anguilla', iso_3 = 'AIA', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AL', 'Albania', 'ALB', 355)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Albania', iso_3 = 'ALB', calling_code = 355;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AM', 'Armenia', 'ARM', 374)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Armenia', iso_3 = 'ARM', calling_code = 374;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AO', 'Angola', 'AGO', 244)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Angola', iso_3 = 'AGO', calling_code = 244;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AR', 'Argentina', 'ARG', 54)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Argentina', iso_3 = 'ARG', calling_code = 54;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AS', 'American Samoa', 'ASM', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'American Samoa', iso_3 = 'ASM', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AT', 'Austria', 'AUT', 43)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Austria', iso_3 = 'AUT', calling_code = 43;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AU', 'Australia', 'AUS', 61)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Australia', iso_3 = 'AUS', calling_code = 61;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AW', 'Aruba', 'ABW', 297)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Aruba', iso_3 = 'ABW', calling_code = 297;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AX', 'Åland Islands', 'ALA', 358)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Åland Islands', iso_3 = 'ALA', calling_code = 358;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('AZ', 'Azerbaijan', 'AZE', 994)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Azerbaijan', iso_3 = 'AZE', calling_code = 994;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BA', 'Bosnia and Herzegovina', 'BIH', 387)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bosnia and Herzegovina', iso_3 = 'BIH', calling_code = 387;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BB', 'Barbados', 'BRB', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Barbados', iso_3 = 'BRB', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BD', 'Bangladesh', 'BGD', 880)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bangladesh', iso_3 = 'BGD', calling_code = 880;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BE', 'Belgium', 'BEL', 32)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Belgium', iso_3 = 'BEL', calling_code = 32;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BF', 'Burkina Faso', 'BFA', 226)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Burkina Faso', iso_3 = 'BFA', calling_code = 226;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BG', 'Bulgaria', 'BGR', 359)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bulgaria', iso_3 = 'BGR', calling_code = 359;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BH', 'Bahrain', 'BHR', 973)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bahrain', iso_3 = 'BHR', calling_code = 973;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BI', 'Burundi', 'BDI', 257)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Burundi', iso_3 = 'BDI', calling_code = 257;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BJ', 'Benin', 'BEN', 229)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Benin', iso_3 = 'BEN', calling_code = 229;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BL', 'Saint Barthélemy', 'BLM', 590)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Saint Barthélemy', iso_3 = 'BLM', calling_code = 590;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BM', 'Bermuda', 'BMU', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bermuda', iso_3 = 'BMU', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BN', 'Brunei', 'BRN', 673)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Brunei', iso_3 = 'BRN', calling_code = 673;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BO', 'Bolivia', 'BOL', 591)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bolivia', iso_3 = 'BOL', calling_code = 591;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BQ', 'Bonaire, Sint Eustatius and Saba', 'BES', 599)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bonaire, Sint Eustatius and Saba', iso_3 = 'BES', calling_code = 599;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BR', 'Brazil', 'BRA', 55)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Brazil', iso_3 = 'BRA', calling_code = 55;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BS', 'Bahamas', 'BHS', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bahamas', iso_3 = 'BHS', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BT', 'Bhutan', 'BTN', 975)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Bhutan', iso_3 = 'BTN', calling_code = 975;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BW', 'Botswana', 'BWA', 267)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Botswana', iso_3 = 'BWA', calling_code = 267;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BY', 'Belarus', 'BLR', 375)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Belarus', iso_3 = 'BLR', calling_code = 375;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('BZ', 'Belize', 'BLZ', 501)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Belize', iso_3 = 'BLZ', calling_code = 501;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CA', 'Canada', 'CAN', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Canada', iso_3 = 'CAN', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CC', 'Cocos Islands', 'CCK', 61)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cocos Islands', iso_3 = 'CCK', calling_code = 61;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CD', 'The Democratic Republic Of Congo', 'COD', 243)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'The Democratic Republic Of Congo', iso_3 = 'COD', calling_code = 243;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CF', 'Central African Republic', 'CAF', 236)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Central African Republic', iso_3 = 'CAF', calling_code = 236;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CG', 'Congo', 'COG', 242)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Congo', iso_3 = 'COG', calling_code = 242;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CH', 'Switzerland', 'CHE', 41)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Switzerland', iso_3 = 'CHE', calling_code = 41;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CI', 'Côte d''Ivoire', 'CIV', 225)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Côte d''Ivoire', iso_3 = 'CIV', calling_code = 225;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CK', 'Cook Islands', 'COK', 682)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cook Islands', iso_3 = 'COK', calling_code = 682;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CL', 'Chile', 'CHL', 56)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Chile', iso_3 = 'CHL', calling_code = 56;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CM', 'Cameroon', 'CMR', 237)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cameroon', iso_3 = 'CMR', calling_code = 237;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CN', 'China', 'CHN', 86)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'China', iso_3 = 'CHN', calling_code = 86;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CO', 'Colombia', 'COL', 57)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Colombia', iso_3 = 'COL', calling_code = 57;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CR', 'Costa Rica', 'CRI', 506)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Costa Rica', iso_3 = 'CRI', calling_code = 506;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CU', 'Cuba', 'CUB', 53)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cuba', iso_3 = 'CUB', calling_code = 53;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CV', 'Cape Verde', 'CPV', 238)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cape Verde', iso_3 = 'CPV', calling_code = 238;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CW', 'Curaçao', 'CUW', 599)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Curaçao', iso_3 = 'CUW', calling_code = 599;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CX', 'Christmas Island', 'CXR', 61)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Christmas Island', iso_3 = 'CXR', calling_code = 61;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CY', 'Cyprus', 'CYP', 357)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cyprus', iso_3 = 'CYP', calling_code = 357;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('CZ', 'Czech Republic', 'CZE', 420)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Czech Republic', iso_3 = 'CZE', calling_code = 420;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('DE', 'Germany', 'DEU', 49)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Germany', iso_3 = 'DEU', calling_code = 49;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('DJ', 'Djibouti', 'DJI', 253)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Djibouti', iso_3 = 'DJI', calling_code = 253;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('DK', 'Denmark', 'DNK', 45)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Denmark', iso_3 = 'DNK', calling_code = 45;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('DM', 'Dominica', 'DMA', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Dominica', iso_3 = 'DMA', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('DO', 'Dominican Republic', 'DOM', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Dominican Republic', iso_3 = 'DOM', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('DZ', 'Algeria', 'DZA', 213)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Algeria', iso_3 = 'DZA', calling_code = 213;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('EC', 'Ecuador', 'ECU', 593)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Ecuador', iso_3 = 'ECU', calling_code = 593;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('EE', 'Estonia', 'EST', 372)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Estonia', iso_3 = 'EST', calling_code = 372;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('EG', 'Egypt', 'EGY', 20)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Egypt', iso_3 = 'EGY', calling_code = 20;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('EH', 'Western Sahara', 'ESH', 212)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Western Sahara', iso_3 = 'ESH', calling_code = 212;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('ER', 'Eritrea', 'ERI', 291)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Eritrea', iso_3 = 'ERI', calling_code = 291;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('ES', 'Spain', 'ESP', 34)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Spain', iso_3 = 'ESP', calling_code = 34;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('ET', 'Ethiopia', 'ETH', 251)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Ethiopia', iso_3 = 'ETH', calling_code = 251;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('FI', 'Finland', 'FIN', 358)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Finland', iso_3 = 'FIN', calling_code = 358;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('FJ', 'Fiji', 'FJI', 679)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Fiji', iso_3 = 'FJI', calling_code = 679;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('FK', 'Falkland Islands', 'FLK', 500)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Falkland Islands', iso_3 = 'FLK', calling_code = 500;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('FM', 'Micronesia', 'FSM', 691)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Micronesia', iso_3 = 'FSM', calling_code = 691;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('FO', 'Faroe Islands', 'FRO', 298)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Faroe Islands', iso_3 = 'FRO', calling_code = 298;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('FR', 'France', 'FRA', 33)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'France', iso_3 = 'FRA', calling_code = 33;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GA', 'Gabon', 'GAB', 241)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Gabon', iso_3 = 'GAB', calling_code = 241;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GB', 'United Kingdom', 'GBR', 44)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'United Kingdom', iso_3 = 'GBR', calling_code = 44;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GD', 'Grenada', 'GRD', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Grenada', iso_3 = 'GRD', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GE', 'Georgia', 'GEO', 995)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Georgia', iso_3 = 'GEO', calling_code = 995;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GF', 'French Guiana', 'GUF', 594)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'French Guiana', iso_3 = 'GUF', calling_code = 594;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GG', 'Guernsey', 'GGY', 44)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Guernsey', iso_3 = 'GGY', calling_code = 44;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GH', 'Ghana', 'GHA', 233)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Ghana', iso_3 = 'GHA', calling_code = 233;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GI', 'Gibraltar', 'GIB', 350)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Gibraltar', iso_3 = 'GIB', calling_code = 350;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GL', 'Greenland', 'GRL', 299)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Greenland', iso_3 = 'GRL', calling_code = 299;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GM', 'Gambia', 'GMB', 220)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Gambia', iso_3 = 'GMB', calling_code = 220;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GN', 'Guinea', 'GIN', 224)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Guinea', iso_3 = 'GIN', calling_code = 224;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GP', 'Guadeloupe', 'GLP', 590)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Guadeloupe', iso_3 = 'GLP', calling_code = 590;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GQ', 'Equatorial Guinea', 'GNQ', 240)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Equatorial Guinea', iso_3 = 'GNQ', calling_code = 240;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GR', 'Greece', 'GRC', 30)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Greece', iso_3 = 'GRC', calling_code = 30;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GT', 'Guatemala', 'GTM', 502)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Guatemala', iso_3 = 'GTM', calling_code = 502;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GU', 'Guam', 'GUM', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Guam', iso_3 = 'GUM', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GW', 'Guinea-Bissau', 'GNB', 245)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Guinea-Bissau', iso_3 = 'GNB', calling_code = 245;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('GY', 'Guyana', 'GUY', 592)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Guyana', iso_3 = 'GUY', calling_code = 592;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('HK', 'Hong Kong', 'HKG', 852)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Hong Kong', iso_3 = 'HKG', calling_code = 852;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('HN', 'Honduras', 'HND', 504)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Honduras', iso_3 = 'HND', calling_code = 504;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('HR', 'Croatia', 'HRV', 385)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Croatia', iso_3 = 'HRV', calling_code = 385;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('HT', 'Haiti', 'HTI', 509)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Haiti', iso_3 = 'HTI', calling_code = 509;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('HU', 'Hungary', 'HUN', 36)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Hungary', iso_3 = 'HUN', calling_code = 36;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('ID', 'Indonesia', 'IDN', 62)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Indonesia', iso_3 = 'IDN', calling_code = 62;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('IE', 'Ireland', 'IRL', 353)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Ireland', iso_3 = 'IRL', calling_code = 353;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('IL', 'Israel', 'ISR', 972)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Israel', iso_3 = 'ISR', calling_code = 972;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('IM', 'Isle Of Man', 'IMN', 44)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Isle Of Man', iso_3 = 'IMN', calling_code = 44;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('IN', 'India', 'IND', 91)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'India', iso_3 = 'IND', calling_code = 91;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('IO', 'British Indian Ocean Territory', 'IOT', 246)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'British Indian Ocean Territory', iso_3 = 'IOT', calling_code = 246;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('IQ', 'Iraq', 'IRQ', 964)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Iraq', iso_3 = 'IRQ', calling_code = 964;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('IR', 'Iran', 'IRN', 98)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Iran', iso_3 = 'IRN', calling_code = 98;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('IS', 'Iceland', 'ISL', 354)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Iceland', iso_3 = 'ISL', calling_code = 354;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('IT', 'Italy', 'ITA', 39)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Italy', iso_3 = 'ITA', calling_code = 39;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('JE', 'Jersey', 'JEY', 44)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Jersey', iso_3 = 'JEY', calling_code = 44;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('JM', 'Jamaica', 'JAM', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Jamaica', iso_3 = 'JAM', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('JO', 'Jordan', 'JOR', 962)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Jordan', iso_3 = 'JOR', calling_code = 962;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('JP', 'Japan', 'JPN', 81)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Japan', iso_3 = 'JPN', calling_code = 81;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KE', 'Kenya', 'KEN', 254)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Kenya', iso_3 = 'KEN', calling_code = 254;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KG', 'Kyrgyzstan', 'KGZ', 996)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Kyrgyzstan', iso_3 = 'KGZ', calling_code = 996;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KH', 'Cambodia', 'KHM', 855)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cambodia', iso_3 = 'KHM', calling_code = 855;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KI', 'Kiribati', 'KIR', 686)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Kiribati', iso_3 = 'KIR', calling_code = 686;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KM', 'Comoros', 'COM', 269)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Comoros', iso_3 = 'COM', calling_code = 269;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KN', 'Saint Kitts And Nevis', 'KNA', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Saint Kitts And Nevis', iso_3 = 'KNA', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KP', 'North Korea', 'PRK', 850)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'North Korea', iso_3 = 'PRK', calling_code = 850;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KR', 'South Korea', 'KOR', 82)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'South Korea', iso_3 = 'KOR', calling_code = 82;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KW', 'Kuwait', 'KWT', 965)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Kuwait', iso_3 = 'KWT', calling_code = 965;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KY', 'Cayman Islands', 'CYM', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Cayman Islands', iso_3 = 'CYM', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('KZ', 'Kazakhstan', 'KAZ', 7)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Kazakhstan', iso_3 = 'KAZ', calling_code = 7;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LA', 'Laos', 'LAO', 856)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Laos', iso_3 = 'LAO', calling_code = 856;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LB', 'Lebanon', 'LBN', 961)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Lebanon', iso_3 = 'LBN', calling_code = 961;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LC', 'Saint Lucia', 'LCA', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Saint Lucia', iso_3 = 'LCA', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LI', 'Liechtenstein', 'LIE', 423)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Liechtenstein', iso_3 = 'LIE', calling_code = 423;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LK', 'Sri Lanka', 'LKA', 94)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Sri Lanka', iso_3 = 'LKA', calling_code = 94;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LR', 'Liberia', 'LBR', 231)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Liberia', iso_3 = 'LBR', calling_code = 231;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LS', 'Lesotho', 'LSO', 266)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Lesotho', iso_3 = 'LSO', calling_code = 266;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LT', 'Lithuania', 'LTU', 370)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Lithuania', iso_3 = 'LTU', calling_code = 370;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LU', 'Luxembourg', 'LUX', 352)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Luxembourg', iso_3 = 'LUX', calling_code = 352;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LV', 'Latvia', 'LVA', 371)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Latvia', iso_3 = 'LVA', calling_code = 371;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('LY', 'Libya', 'LBY', 218)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Libya', iso_3 = 'LBY', calling_code = 218;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MA', 'Morocco', 'MAR', 212)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Morocco', iso_3 = 'MAR', calling_code = 212;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MC', 'Monaco', 'MCO', 377)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Monaco', iso_3 = 'MCO', calling_code = 377;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MD', 'Moldova', 'MDA', 373)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Moldova', iso_3 = 'MDA', calling_code = 373;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('ME', 'Montenegro', 'MNE', 382)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Montenegro', iso_3 = 'MNE', calling_code = 382;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MF', 'Saint Martin', 'MAF', 590)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Saint Martin', iso_3 = 'MAF', calling_code = 590;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MG', 'Madagascar', 'MDG', 261)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Madagascar', iso_3 = 'MDG', calling_code = 261;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MH', 'Marshall Islands', 'MHL', 692)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Marshall Islands', iso_3 = 'MHL', calling_code = 692;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MK', 'Macedonia', 'MKD', 389)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Macedonia', iso_3 = 'MKD', calling_code = 389;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('ML', 'Mali', 'MLI', 223)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mali', iso_3 = 'MLI', calling_code = 223;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MM', 'Myanmar', 'MMR', 95)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Myanmar', iso_3 = 'MMR', calling_code = 95;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MN', 'Mongolia', 'MNG', 976)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mongolia', iso_3 = 'MNG', calling_code = 976;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MO', 'Macao', 'MAC', 853)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Macao', iso_3 = 'MAC', calling_code = 853;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MP', 'Northern Mariana Islands', 'MNP', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Northern Mariana Islands', iso_3 = 'MNP', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MQ', 'Martinique', 'MTQ', 596)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Martinique', iso_3 = 'MTQ', calling_code = 596;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MR', 'Mauritania', 'MRT', 222)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mauritania', iso_3 = 'MRT', calling_code = 222;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MS', 'Montserrat', 'MSR', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Montserrat', iso_3 = 'MSR', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MT', 'Malta', 'MLT', 356)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Malta', iso_3 = 'MLT', calling_code = 356;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MU', 'Mauritius', 'MUS', 230)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mauritius', iso_3 = 'MUS', calling_code = 230;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MV', 'Maldives', 'MDV', 960)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Maldives', iso_3 = 'MDV', calling_code = 960;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MW', 'Malawi', 'MWI', 265)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Malawi', iso_3 = 'MWI', calling_code = 265;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MX', 'Mexico', 'MEX', 52)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mexico', iso_3 = 'MEX', calling_code = 52;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MY', 'Malaysia', 'MYS', 60)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Malaysia', iso_3 = 'MYS', calling_code = 60;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('MZ', 'Mozambique', 'MOZ', 258)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mozambique', iso_3 = 'MOZ', calling_code = 258;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NA', 'Namibia', 'NAM', 264)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Namibia', iso_3 = 'NAM', calling_code = 264;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NC', 'New Caledonia', 'NCL', 687)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'New Caledonia', iso_3 = 'NCL', calling_code = 687;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NE', 'Niger', 'NER', 227)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Niger', iso_3 = 'NER', calling_code = 227;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NF', 'Norfolk Island', 'NFK', 672)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Norfolk Island', iso_3 = 'NFK', calling_code = 672;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NG', 'Nigeria', 'NGA', 234)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Nigeria', iso_3 = 'NGA', calling_code = 234;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NI', 'Nicaragua', 'NIC', 505)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Nicaragua', iso_3 = 'NIC', calling_code = 505;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NL', 'Netherlands', 'NLD', 31)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Netherlands', iso_3 = 'NLD', calling_code = 31;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NO', 'Norway', 'NOR', 47)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Norway', iso_3 = 'NOR', calling_code = 47;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NP', 'Nepal', 'NPL', 977)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Nepal', iso_3 = 'NPL', calling_code = 977;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NR', 'Nauru', 'NRU', 674)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Nauru', iso_3 = 'NRU', calling_code = 674;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NU', 'Niue', 'NIU', 683)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Niue', iso_3 = 'NIU', calling_code = 683;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('NZ', 'New Zealand', 'NZL', 64)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'New Zealand', iso_3 = 'NZL', calling_code = 64;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('OM', 'Oman', 'OMN', 968)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Oman', iso_3 = 'OMN', calling_code = 968;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PA', 'Panama', 'PAN', 507)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Panama', iso_3 = 'PAN', calling_code = 507;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PE', 'Peru', 'PER', 51)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Peru', iso_3 = 'PER', calling_code = 51;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PF', 'French Polynesia', 'PYF', 689)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'French Polynesia', iso_3 = 'PYF', calling_code = 689;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PG', 'Papua New Guinea', 'PNG', 675)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Papua New Guinea', iso_3 = 'PNG', calling_code = 675;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PH', 'Philippines', 'PHL', 63)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Philippines', iso_3 = 'PHL', calling_code = 63;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PK', 'Pakistan', 'PAK', 92)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Pakistan', iso_3 = 'PAK', calling_code = 92;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PL', 'Poland', 'POL', 48)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Poland', iso_3 = 'POL', calling_code = 48;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PM', 'Saint Pierre And Miquelon', 'SPM', 508)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Saint Pierre And Miquelon', iso_3 = 'SPM', calling_code = 508;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PR', 'Puerto Rico', 'PRI', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Puerto Rico', iso_3 = 'PRI', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PS', 'Palestine', 'PSE', 970)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Palestine', iso_3 = 'PSE', calling_code = 970;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PT', 'Portugal', 'PRT', 351)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Portugal', iso_3 = 'PRT', calling_code = 351;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PW', 'Palau', 'PLW', 680)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Palau', iso_3 = 'PLW', calling_code = 680;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('PY', 'Paraguay', 'PRY', 595)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Paraguay', iso_3 = 'PRY', calling_code = 595;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('QA', 'Qatar', 'QAT', 974)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Qatar', iso_3 = 'QAT', calling_code = 974;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('RE', 'Reunion', 'REU', 262)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Reunion', iso_3 = 'REU', calling_code = 262;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('RO', 'Romania', 'ROU', 40)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Romania', iso_3 = 'ROU', calling_code = 40;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('RS', 'Serbia', 'SRB', 381)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Serbia', iso_3 = 'SRB', calling_code = 381;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('RU', 'Russia', 'RUS', 7)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Russia', iso_3 = 'RUS', calling_code = 7;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('RW', 'Rwanda', 'RWA', 250)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Rwanda', iso_3 = 'RWA', calling_code = 250;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SA', 'Saudi Arabia', 'SAU', 966)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Saudi Arabia', iso_3 = 'SAU', calling_code = 966;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SB', 'Solomon Islands', 'SLB', 677)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Solomon Islands', iso_3 = 'SLB', calling_code = 677;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SC', 'Seychelles', 'SYC', 248)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Seychelles', iso_3 = 'SYC', calling_code = 248;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SD', 'Sudan', 'SDN', 249)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Sudan', iso_3 = 'SDN', calling_code = 249;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SE', 'Sweden', 'SWE', 46)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Sweden', iso_3 = 'SWE', calling_code = 46;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SG', 'Singapore', 'SGP', 65)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Singapore', iso_3 = 'SGP', calling_code = 65;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SH', 'Saint Helena', 'SHN', 290)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Saint Helena', iso_3 = 'SHN', calling_code = 290;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SI', 'Slovenia', 'SVN', 386)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Slovenia', iso_3 = 'SVN', calling_code = 386;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SJ', 'Svalbard And Jan Mayen', 'SJM', 47)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Svalbard And Jan Mayen', iso_3 = 'SJM', calling_code = 47;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SK', 'Slovakia', 'SVK', 421)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Slovakia', iso_3 = 'SVK', calling_code = 421;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SL', 'Sierra Leone', 'SLE', 232)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Sierra Leone', iso_3 = 'SLE', calling_code = 232;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SM', 'San Marino', 'SMR', 378)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'San Marino', iso_3 = 'SMR', calling_code = 378;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SN', 'Senegal', 'SEN', 221)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Senegal', iso_3 = 'SEN', calling_code = 221;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SO', 'Somalia', 'SOM', 252)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Somalia', iso_3 = 'SOM', calling_code = 252;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SR', 'Suriname', 'SUR', 597)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Suriname', iso_3 = 'SUR', calling_code = 597;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SS', 'South Sudan', 'SSD', 211)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'South Sudan', iso_3 = 'SSD', calling_code = 211;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('ST', 'Sao Tome And Principe', 'STP', 239)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Sao Tome And Principe', iso_3 = 'STP', calling_code = 239;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SV', 'El Salvador', 'SLV', 503)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'El Salvador', iso_3 = 'SLV', calling_code = 503;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SX', 'Sint Maarten (Dutch part)', 'SXM', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Sint Maarten (Dutch part)', iso_3 = 'SXM', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SY', 'Syria', 'SYR', 963)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Syria', iso_3 = 'SYR', calling_code = 963;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('SZ', 'Swaziland', 'SWZ', 268)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Swaziland', iso_3 = 'SWZ', calling_code = 268;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TA', 'Tristan da Cunha', NULL, 290)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Tristan da Cunha', iso_3 = NULL, calling_code = 290;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TC', 'Turks And Caicos Islands', 'TCA', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Turks And Caicos Islands', iso_3 = 'TCA', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TD', 'Chad', 'TCD', 235)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Chad', iso_3 = 'TCD', calling_code = 235;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TG', 'Togo', 'TGO', 228)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Togo', iso_3 = 'TGO', calling_code = 228;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TH', 'Thailand', 'THA', 66)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Thailand', iso_3 = 'THA', calling_code = 66;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TJ', 'Tajikistan', 'TJK', 992)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Tajikistan', iso_3 = 'TJK', calling_code = 992;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TK', 'Tokelau', 'TKL', 690)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Tokelau', iso_3 = 'TKL', calling_code = 690;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TL', 'Timor-Leste', 'TLS', 670)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Timor-Leste', iso_3 = 'TLS', calling_code = 670;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TM', 'Turkmenistan', 'TKM', 993)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Turkmenistan', iso_3 = 'TKM', calling_code = 993;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TN', 'Tunisia', 'TUN', 216)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Tunisia', iso_3 = 'TUN', calling_code = 216;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TO', 'Tonga', 'TON', 676)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Tonga', iso_3 = 'TON', calling_code = 676;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TR', 'Turkey', 'TUR', 90)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Turkey', iso_3 = 'TUR', calling_code = 90;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TT', 'Trinidad and Tobago', 'TTO', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Trinidad and Tobago', iso_3 = 'TTO', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TV', 'Tuvalu', 'TUV', 688)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Tuvalu', iso_3 = 'TUV', calling_code = 688;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TW', 'Taiwan', 'TWN', 886)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Taiwan', iso_3 = 'TWN', calling_code = 886;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('TZ', 'Tanzania', 'TZA', 255)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Tanzania', iso_3 = 'TZA', calling_code = 255;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('UA', 'Ukraine', 'UKR', 380)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Ukraine', iso_3 = 'UKR', calling_code = 380;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('UG', 'Uganda', 'UGA', 256)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Uganda', iso_3 = 'UGA', calling_code = 256;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('US', 'United States', 'USA', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'United States', iso_3 = 'USA', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('UY', 'Uruguay', 'URY', 598)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Uruguay', iso_3 = 'URY', calling_code = 598;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('UZ', 'Uzbekistan', 'UZB', 998)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Uzbekistan', iso_3 = 'UZB', calling_code = 998;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('VA', 'Vatican', 'VAT', 39)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Vatican', iso_3 = 'VAT', calling_code = 39;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('VC', 'Saint Vincent And The Grenadines', 'VCT', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Saint Vincent And The Grenadines', iso_3 = 'VCT', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('VE', 'Venezuela', 'VEN', 58)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Venezuela', iso_3 = 'VEN', calling_code = 58;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('VG', 'British Virgin Islands', 'VGB', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'British Virgin Islands', iso_3 = 'VGB', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('VI', 'U.S. Virgin Islands', 'VIR', 1)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'U.S. Virgin Islands', iso_3 = 'VIR', calling_code = 1;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('VN', 'Vietnam', 'VNM', 84)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Vietnam', iso_3 = 'VNM', calling_code = 84;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('VU', 'Vanuatu', 'VUT', 678)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Vanuatu', iso_3 = 'VUT', calling_code = 678;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('WF', 'Wallis And Futuna', 'WLF', 681)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Wallis And Futuna', iso_3 = 'WLF', calling_code = 681;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('WS', 'Samoa', 'WSM', 685)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Samoa', iso_3 = 'WSM', calling_code = 685;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('XK', 'Kosovo', 'KOS', 383)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Kosovo', iso_3 = 'KOS', calling_code = 383;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('YE', 'Yemen', 'YEM', 967)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Yemen', iso_3 = 'YEM', calling_code = 967;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('YT', 'Mayotte', 'MYT', 262)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Mayotte', iso_3 = 'MYT', calling_code = 262;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('ZA', 'South Africa', 'ZAF', 27)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'South Africa', iso_3 = 'ZAF', calling_code = 27;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('ZM', 'Zambia', 'ZMB', 260)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Zambia', iso_3 = 'ZMB', calling_code = 260;
INSERT INTO countries (iso_code, name, iso_3, calling_code) VALUES ('ZW', 'Zimbabwe', 'ZWE', 263)
ON CONFLICT (iso_code)
DO 
   UPDATE SET name = 'Zimbabwe', iso_3 = 'ZWE', calling_code = 263;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM countries WHERE iso_code='AC';
DELETE FROM countries WHERE iso_code='AD';
DELETE FROM countries WHERE iso_code='AE';
DELETE FROM countries WHERE iso_code='AF';
DELETE FROM countries WHERE iso_code='AG';
DELETE FROM countries WHERE iso_code='AI';
DELETE FROM countries WHERE iso_code='AL';
DELETE FROM countries WHERE iso_code='AM';
DELETE FROM countries WHERE iso_code='AO';
DELETE FROM countries WHERE iso_code='AR';
DELETE FROM countries WHERE iso_code='AS';
DELETE FROM countries WHERE iso_code='AT';
DELETE FROM countries WHERE iso_code='AU';
DELETE FROM countries WHERE iso_code='AW';
DELETE FROM countries WHERE iso_code='AX';
DELETE FROM countries WHERE iso_code='AZ';
DELETE FROM countries WHERE iso_code='BA';
DELETE FROM countries WHERE iso_code='BB';
DELETE FROM countries WHERE iso_code='BD';
DELETE FROM countries WHERE iso_code='BE';
DELETE FROM countries WHERE iso_code='BF';
DELETE FROM countries WHERE iso_code='BG';
DELETE FROM countries WHERE iso_code='BH';
DELETE FROM countries WHERE iso_code='BI';
DELETE FROM countries WHERE iso_code='BJ';
DELETE FROM countries WHERE iso_code='BL';
DELETE FROM countries WHERE iso_code='BM';
DELETE FROM countries WHERE iso_code='BN';
DELETE FROM countries WHERE iso_code='BO';
DELETE FROM countries WHERE iso_code='BQ';
DELETE FROM countries WHERE iso_code='BR';
DELETE FROM countries WHERE iso_code='BS';
DELETE FROM countries WHERE iso_code='BT';
DELETE FROM countries WHERE iso_code='BW';
DELETE FROM countries WHERE iso_code='BY';
DELETE FROM countries WHERE iso_code='BZ';
DELETE FROM countries WHERE iso_code='CA';
DELETE FROM countries WHERE iso_code='CC';
DELETE FROM countries WHERE iso_code='CD';
DELETE FROM countries WHERE iso_code='CF';
DELETE FROM countries WHERE iso_code='CG';
DELETE FROM countries WHERE iso_code='CH';
DELETE FROM countries WHERE iso_code='CI';
DELETE FROM countries WHERE iso_code='CK';
DELETE FROM countries WHERE iso_code='CL';
DELETE FROM countries WHERE iso_code='CM';
DELETE FROM countries WHERE iso_code='CN';
DELETE FROM countries WHERE iso_code='CO';
DELETE FROM countries WHERE iso_code='CR';
DELETE FROM countries WHERE iso_code='CU';
DELETE FROM countries WHERE iso_code='CV';
DELETE FROM countries WHERE iso_code='CW';
DELETE FROM countries WHERE iso_code='CX';
DELETE FROM countries WHERE iso_code='CY';
DELETE FROM countries WHERE iso_code='CZ';
DELETE FROM countries WHERE iso_code='DE';
DELETE FROM countries WHERE iso_code='DJ';
DELETE FROM countries WHERE iso_code='DK';
DELETE FROM countries WHERE iso_code='DM';
DELETE FROM countries WHERE iso_code='DO';
DELETE FROM countries WHERE iso_code='DZ';
DELETE FROM countries WHERE iso_code='EC';
DELETE FROM countries WHERE iso_code='EE';
DELETE FROM countries WHERE iso_code='EG';
DELETE FROM countries WHERE iso_code='EH';
DELETE FROM countries WHERE iso_code='ER';
DELETE FROM countries WHERE iso_code='ES';
DELETE FROM countries WHERE iso_code='ET';
DELETE FROM countries WHERE iso_code='FI';
DELETE FROM countries WHERE iso_code='FJ';
DELETE FROM countries WHERE iso_code='FK';
DELETE FROM countries WHERE iso_code='FM';
DELETE FROM countries WHERE iso_code='FO';
DELETE FROM countries WHERE iso_code='FR';
DELETE FROM countries WHERE iso_code='GA';
DELETE FROM countries WHERE iso_code='GB';
DELETE FROM countries WHERE iso_code='GD';
DELETE FROM countries WHERE iso_code='GE';
DELETE FROM countries WHERE iso_code='GF';
DELETE FROM countries WHERE iso_code='GG';
DELETE FROM countries WHERE iso_code='GH';
DELETE FROM countries WHERE iso_code='GI';
DELETE FROM countries WHERE iso_code='GL';
DELETE FROM countries WHERE iso_code='GM';
DELETE FROM countries WHERE iso_code='GN';
DELETE FROM countries WHERE iso_code='GP';
DELETE FROM countries WHERE iso_code='GQ';
DELETE FROM countries WHERE iso_code='GR';
DELETE FROM countries WHERE iso_code='GT';
DELETE FROM countries WHERE iso_code='GU';
DELETE FROM countries WHERE iso_code='GW';
DELETE FROM countries WHERE iso_code='GY';
DELETE FROM countries WHERE iso_code='HK';
DELETE FROM countries WHERE iso_code='HN';
DELETE FROM countries WHERE iso_code='HR';
DELETE FROM countries WHERE iso_code='HT';
DELETE FROM countries WHERE iso_code='HU';
DELETE FROM countries WHERE iso_code='ID';
DELETE FROM countries WHERE iso_code='IE';
DELETE FROM countries WHERE iso_code='IL';
DELETE FROM countries WHERE iso_code='IM';
DELETE FROM countries WHERE iso_code='IN';
DELETE FROM countries WHERE iso_code='IO';
DELETE FROM countries WHERE iso_code='IQ';
DELETE FROM countries WHERE iso_code='IR';
DELETE FROM countries WHERE iso_code='IS';
DELETE FROM countries WHERE iso_code='IT';
DELETE FROM countries WHERE iso_code='JE';
DELETE FROM countries WHERE iso_code='JM';
DELETE FROM countries WHERE iso_code='JO';
DELETE FROM countries WHERE iso_code='JP';
DELETE FROM countries WHERE iso_code='KE';
DELETE FROM countries WHERE iso_code='KG';
DELETE FROM countries WHERE iso_code='KH';
DELETE FROM countries WHERE iso_code='KI';
DELETE FROM countries WHERE iso_code='KM';
DELETE FROM countries WHERE iso_code='KN';
DELETE FROM countries WHERE iso_code='KP';
DELETE FROM countries WHERE iso_code='KR';
DELETE FROM countries WHERE iso_code='KW';
DELETE FROM countries WHERE iso_code='KY';
DELETE FROM countries WHERE iso_code='KZ';
DELETE FROM countries WHERE iso_code='LA';
DELETE FROM countries WHERE iso_code='LB';
DELETE FROM countries WHERE iso_code='LC';
DELETE FROM countries WHERE iso_code='LI';
DELETE FROM countries WHERE iso_code='LK';
DELETE FROM countries WHERE iso_code='LR';
DELETE FROM countries WHERE iso_code='LS';
DELETE FROM countries WHERE iso_code='LT';
DELETE FROM countries WHERE iso_code='LU';
DELETE FROM countries WHERE iso_code='LV';
DELETE FROM countries WHERE iso_code='LY';
DELETE FROM countries WHERE iso_code='MA';
DELETE FROM countries WHERE iso_code='MC';
DELETE FROM countries WHERE iso_code='MD';
DELETE FROM countries WHERE iso_code='ME';
DELETE FROM countries WHERE iso_code='MF';
DELETE FROM countries WHERE iso_code='MG';
DELETE FROM countries WHERE iso_code='MH';
DELETE FROM countries WHERE iso_code='MK';
DELETE FROM countries WHERE iso_code='ML';
DELETE FROM countries WHERE iso_code='MM';
DELETE FROM countries WHERE iso_code='MN';
DELETE FROM countries WHERE iso_code='MO';
DELETE FROM countries WHERE iso_code='MP';
DELETE FROM countries WHERE iso_code='MQ';
DELETE FROM countries WHERE iso_code='MR';
DELETE FROM countries WHERE iso_code='MS';
DELETE FROM countries WHERE iso_code='MT';
DELETE FROM countries WHERE iso_code='MU';
DELETE FROM countries WHERE iso_code='MV';
DELETE FROM countries WHERE iso_code='MW';
DELETE FROM countries WHERE iso_code='MX';
DELETE FROM countries WHERE iso_code='MY';
DELETE FROM countries WHERE iso_code='MZ';
DELETE FROM countries WHERE iso_code='NA';
DELETE FROM countries WHERE iso_code='NC';
DELETE FROM countries WHERE iso_code='NE';
DELETE FROM countries WHERE iso_code='NF';
DELETE FROM countries WHERE iso_code='NG';
DELETE FROM countries WHERE iso_code='NI';
DELETE FROM countries WHERE iso_code='NL';
DELETE FROM countries WHERE iso_code='NO';
DELETE FROM countries WHERE iso_code='NP';
DELETE FROM countries WHERE iso_code='NR';
DELETE FROM countries WHERE iso_code='NU';
DELETE FROM countries WHERE iso_code='NZ';
DELETE FROM countries WHERE iso_code='OM';
DELETE FROM countries WHERE iso_code='PA';
DELETE FROM countries WHERE iso_code='PE';
DELETE FROM countries WHERE iso_code='PF';
DELETE FROM countries WHERE iso_code='PG';
DELETE FROM countries WHERE iso_code='PH';
DELETE FROM countries WHERE iso_code='PK';
DELETE FROM countries WHERE iso_code='PL';
DELETE FROM countries WHERE iso_code='PM';
DELETE FROM countries WHERE iso_code='PR';
DELETE FROM countries WHERE iso_code='PS';
DELETE FROM countries WHERE iso_code='PT';
DELETE FROM countries WHERE iso_code='PW';
DELETE FROM countries WHERE iso_code='PY';
DELETE FROM countries WHERE iso_code='QA';
DELETE FROM countries WHERE iso_code='RE';
DELETE FROM countries WHERE iso_code='RO';
DELETE FROM countries WHERE iso_code='RS';
DELETE FROM countries WHERE iso_code='RU';
DELETE FROM countries WHERE iso_code='RW';
DELETE FROM countries WHERE iso_code='SA';
DELETE FROM countries WHERE iso_code='SB';
DELETE FROM countries WHERE iso_code='SC';
DELETE FROM countries WHERE iso_code='SD';
DELETE FROM countries WHERE iso_code='SE';
DELETE FROM countries WHERE iso_code='SG';
DELETE FROM countries WHERE iso_code='SH';
DELETE FROM countries WHERE iso_code='SI';
DELETE FROM countries WHERE iso_code='SJ';
DELETE FROM countries WHERE iso_code='SK';
DELETE FROM countries WHERE iso_code='SL';
DELETE FROM countries WHERE iso_code='SM';
DELETE FROM countries WHERE iso_code='SN';
DELETE FROM countries WHERE iso_code='SO';
DELETE FROM countries WHERE iso_code='SR';
DELETE FROM countries WHERE iso_code='SS';
DELETE FROM countries WHERE iso_code='ST';
DELETE FROM countries WHERE iso_code='SV';
DELETE FROM countries WHERE iso_code='SX';
DELETE FROM countries WHERE iso_code='SY';
DELETE FROM countries WHERE iso_code='SZ';
DELETE FROM countries WHERE iso_code='TA';
DELETE FROM countries WHERE iso_code='TC';
DELETE FROM countries WHERE iso_code='TD';
DELETE FROM countries WHERE iso_code='TG';
DELETE FROM countries WHERE iso_code='TH';
DELETE FROM countries WHERE iso_code='TJ';
DELETE FROM countries WHERE iso_code='TK';
DELETE FROM countries WHERE iso_code='TL';
DELETE FROM countries WHERE iso_code='TM';
DELETE FROM countries WHERE iso_code='TN';
DELETE FROM countries WHERE iso_code='TO';
DELETE FROM countries WHERE iso_code='TR';
DELETE FROM countries WHERE iso_code='TT';
DELETE FROM countries WHERE iso_code='TV';
DELETE FROM countries WHERE iso_code='TW';
DELETE FROM countries WHERE iso_code='TZ';
DELETE FROM countries WHERE iso_code='UA';
DELETE FROM countries WHERE iso_code='UG';
DELETE FROM countries WHERE iso_code='US';
DELETE FROM countries WHERE iso_code='UY';
DELETE FROM countries WHERE iso_code='UZ';
DELETE FROM countries WHERE iso_code='VA';
DELETE FROM countries WHERE iso_code='VC';
DELETE FROM countries WHERE iso_code='VE';
DELETE FROM countries WHERE iso_code='VG';
DELETE FROM countries WHERE iso_code='VI';
DELETE FROM countries WHERE iso_code='VN';
DELETE FROM countries WHERE iso_code='VU';
DELETE FROM countries WHERE iso_code='WF';
DELETE FROM countries WHERE iso_code='WS';
DELETE FROM countries WHERE iso_code='XK';
DELETE FROM countries WHERE iso_code='YE';
DELETE FROM countries WHERE iso_code='YT';
DELETE FROM countries WHERE iso_code='ZA';
DELETE FROM countries WHERE iso_code='ZM';
DELETE FROM countries WHERE iso_code='ZW';
-- +goose StatementEnd
