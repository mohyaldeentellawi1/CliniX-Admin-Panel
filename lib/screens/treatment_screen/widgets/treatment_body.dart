import 'package:clinix_admin_panel/core/utils/colors.dart';

import 'package:flutter/material.dart';

class TreatmentBody extends StatefulWidget {
  const TreatmentBody({super.key});

  @override
  State<TreatmentBody> createState() => _TreatmentBodyState();
}

class _TreatmentBodyState extends State<TreatmentBody> {
  bool isSelected = false;
  List<TreatmentRow> treatmentRows = [
    TreatmentRow("Acupuncture", true),
    TreatmentRow("Bariatric Surgery", false),
    TreatmentRow("Beauty Salon Treatments", false),
    TreatmentRow("Cardiology", false),
    TreatmentRow("Chiropractic", false),
    TreatmentRow("Dentistry", false),
    TreatmentRow("Dermatology", false),
    TreatmentRow("Ear Nose and Throat", false),
    TreatmentRow("Eye Care", false),
    TreatmentRow("Fertility", false),
    TreatmentRow("Gastroenterology", false),
    TreatmentRow("General Practice", false),
    TreatmentRow("Hair Loss Treatments", false),
    TreatmentRow("Holistic Health", false),
    TreatmentRow("Laser Eye Surgery", false),
    TreatmentRow("Massage Therapy", false),
    TreatmentRow("Medical Aesthetics", true),
    TreatmentRow("Neurology", false),
    TreatmentRow("Obstetrics / Gynaecology", false),
    TreatmentRow("Oncology", false),
    TreatmentRow("Organ Transplants", false),
    TreatmentRow("Orthopaedics", false),
    TreatmentRow("Osteopathy", false),
    TreatmentRow("Physiotherapy", true),
    TreatmentRow("Plastic Surgery", false),
    TreatmentRow("Psychiatry", false),
    TreatmentRow("Psychology", false),
    TreatmentRow("Psychotherapy", false),
    TreatmentRow("Urology", false),
  ];

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingTextStyle: const TextStyle(color: AppColor.mainbackground),
      headingRowColor: const WidgetStatePropertyAll(AppColor.selecteColor),
      showBottomBorder: true,
      border: TableBorder.all(color: AppColor.borders),
      columnSpacing: 200,
      columns: const <DataColumn>[
        DataColumn(label: Text('Choose Treatment Type')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('Action')),
      ],
      rows: List<DataRow>.generate(
        treatmentRows.length,
        (index) => DataRow(
          cells: <DataCell>[
            DataCell(Text(treatmentRows[index].treatmentType)),
            DataCell(treatmentRows[index].status
                ? const Text('Active')
                : const Text('')),
            DataCell(
              const Text('Select'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class TreatmentRow {
  String treatmentType;
  bool status;

  TreatmentRow(this.treatmentType, this.status);
}
