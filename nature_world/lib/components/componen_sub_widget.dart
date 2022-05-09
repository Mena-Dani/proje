import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../subcat_detalle/subcat_detalle_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComponenSubWidget extends StatefulWidget {
  const ComponenSubWidget({
    Key key,
    this.catet,
    this.sub,
  }) : super(key: key);

  final DocumentReference catet;
  final DocumentReference sub;

  @override
  _ComponenSubWidgetState createState() => _ComponenSubWidgetState();
}

class _ComponenSubWidgetState extends State<ComponenSubWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StreamBuilder<CategoriasRecord>(
              stream: CategoriasRecord.getDocument(widget.catet),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: Color(0xFF4B39EF),
                      ),
                    ),
                  );
                }
                final columnCategoriasRecord = snapshot.data;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StreamBuilder<List<SubcategoriaRecord>>(
                        stream: querySubcategoriaRecord(
                          queryBuilder: (subcategoriaRecord) =>
                              subcategoriaRecord
                                  .where(
                                      'Categoria',
                                      isEqualTo:
                                          columnCategoriasRecord.reference)
                                  .orderBy('nombre'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color: Color(0xFF4B39EF),
                                ),
                              ),
                            );
                          }
                          List<SubcategoriaRecord>
                              columnSubcategoriaRecordList = snapshot.data;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: List.generate(
                                  columnSubcategoriaRecordList.length,
                                  (columnIndex) {
                                final columnSubcategoriaRecord =
                                    columnSubcategoriaRecordList[columnIndex];
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 10),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SubcatDetalleWidget(
                                                subcategoria:
                                                    columnSubcategoriaRecord
                                                        .reference,
                                                categoria:
                                                    columnCategoriasRecord
                                                        .reference,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          columnSubcategoriaRecord.nombre,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -0.05),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: InkWell(
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.cancel_sharp,
                              color: Colors.black,
                              size: 64,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
