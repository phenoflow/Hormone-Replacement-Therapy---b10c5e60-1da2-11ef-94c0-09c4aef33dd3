# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"5755","system":"gprdproduct"},{"code":"6601","system":"gprdproduct"},{"code":"15328","system":"gprdproduct"},{"code":"10180","system":"gprdproduct"},{"code":"15880","system":"gprdproduct"},{"code":"5759","system":"gprdproduct"},{"code":"1489","system":"gprdproduct"},{"code":"35742","system":"gprdproduct"},{"code":"44494","system":"gprdproduct"},{"code":"52632","system":"gprdproduct"},{"code":"64735","system":"gprdproduct"},{"code":"44461","system":"gprdproduct"},{"code":"14792","system":"gprdproduct"},{"code":"49693","system":"gprdproduct"},{"code":"18600","system":"gprdproduct"},{"code":"42515","system":"gprdproduct"},{"code":"3387","system":"gprdproduct"},{"code":"18437","system":"gprdproduct"},{"code":"13582","system":"gprdproduct"},{"code":"37692","system":"gprdproduct"},{"code":"9268","system":"gprdproduct"},{"code":"51201","system":"gprdproduct"},{"code":"10076","system":"gprdproduct"},{"code":"10946","system":"gprdproduct"},{"code":"11375","system":"gprdproduct"},{"code":"52174","system":"gprdproduct"},{"code":"6563","system":"gprdproduct"},{"code":"206","system":"gprdproduct"},{"code":"15298","system":"gprdproduct"},{"code":"37033","system":"gprdproduct"},{"code":"5343","system":"gprdproduct"},{"code":"37037","system":"gprdproduct"},{"code":"11882","system":"gprdproduct"},{"code":"18901","system":"gprdproduct"},{"code":"14580","system":"gprdproduct"},{"code":"20895","system":"gprdproduct"},{"code":"986","system":"gprdproduct"},{"code":"3040","system":"gprdproduct"},{"code":"988","system":"gprdproduct"},{"code":"2140","system":"gprdproduct"},{"code":"18502","system":"gprdproduct"},{"code":"18311","system":"gprdproduct"},{"code":"37697","system":"gprdproduct"},{"code":"32930","system":"gprdproduct"},{"code":"10126","system":"gprdproduct"},{"code":"6793","system":"gprdproduct"},{"code":"11672","system":"gprdproduct"},{"code":"19145","system":"gprdproduct"},{"code":"4977","system":"gprdproduct"},{"code":"6082","system":"gprdproduct"},{"code":"18383","system":"gprdproduct"},{"code":"15194","system":"gprdproduct"},{"code":"4721","system":"gprdproduct"},{"code":"20155","system":"gprdproduct"},{"code":"11430","system":"gprdproduct"},{"code":"20135","system":"gprdproduct"},{"code":"15869","system":"gprdproduct"},{"code":"18218","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('hormone-replacement-therapy-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["hormone-replacement-therapy-10microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["hormone-replacement-therapy-10microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["hormone-replacement-therapy-10microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
