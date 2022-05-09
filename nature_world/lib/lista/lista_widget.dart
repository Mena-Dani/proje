import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/stripe/payment_manager.dart';
import '../categoria_detalle/categoria_detalle_widget.dart';
import '../components/componen_sub_widget.dart';
import '../components/info_ong_map_widget.dart';
import '../components/nobusqueda_widget.dart';
import '../detalles_o_n_g/detalles_o_n_g_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ListaWidget extends StatefulWidget {
  const ListaWidget({Key key}) : super(key: key);

  @override
  _ListaWidgetState createState() => _ListaWidgetState();
}

class _ListaWidgetState extends State<ListaWidget> {
  LatLng googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  List<OngsRecord> algoliaSearchResults = [];
  TextEditingController textController;
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CategoriasRecord>>(
      stream: queryCategoriasRecord(
        singleRecord: true,
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
        List<CategoriasRecord> listaCategoriasRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final listaCategoriasRecord = listaCategoriasRecordList.isNotEmpty
            ? listaCategoriasRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xFF4B39EF),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                    child: DefaultTabController(
                      length: 2,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          TabBar(
                            labelColor: FlutterFlowTheme.of(context).lineColor,
                            labelStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                    ),
                            indicatorColor:
                                FlutterFlowTheme.of(context).lineColor,
                            tabs: [
                              Tab(
                                text: 'Lista',
                              ),
                              Tab(
                                text: 'Mapa',
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 1, 0),
                                          child: StreamBuilder<
                                              List<CategoriasRecord>>(
                                            stream: queryCategoriasRecord(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Color(0xFF4B39EF),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<CategoriasRecord>
                                                  rowCategoriesCategoriasRecordList =
                                                  snapshot.data;
                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      rowCategoriesCategoriasRecordList
                                                          .length,
                                                      (rowCategoriesIndex) {
                                                    final rowCategoriesCategoriasRecord =
                                                        rowCategoriesCategoriasRecordList[
                                                            rowCategoriesIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 8, 0, 8),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 2,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Container(
                                                          width: 120,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      await Navigator
                                                                          .push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              CategoriaDetalleWidget(
                                                                            categoria:
                                                                                rowCategoriesCategoriasRecord.reference,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        rowCategoriesCategoriasRecord
                                                                            .img,
                                                                        'https://cdn-icons-png.flaticon.com/512/4908/4908846.png',
                                                                      ),
                                                                      width: 70,
                                                                      height:
                                                                          70,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            3,
                                                                            0,
                                                                            3,
                                                                            0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        await Navigator
                                                                            .push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                CategoriaDetalleWidget(
                                                                              categoria: rowCategoriesCategoriasRecord.reference,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        rowCategoriesCategoriasRecord
                                                                            .nombre,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2
                                                                            .override(
                                                                              fontFamily: 'Lexend Deca',
                                                                              color: Color(0xFF1E1E1C),
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Color(0x932E2E2E),
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return Padding(
                                                                              padding: MediaQuery.of(context).viewInsets,
                                                                              child: ComponenSubWidget(
                                                                                catet: rowCategoriesCategoriasRecord.reference,
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_drop_down_rounded,
                                                                        color: Color(
                                                                            0xFF1E1E1C),
                                                                        size:
                                                                            28,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF1EEE0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.75,
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 85),
                                                  child: PageView(
                                                    controller:
                                                        pageViewController ??=
                                                            PageController(
                                                                initialPage: 0),
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    'TODAS',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFF1E1E1C),
                                                                        ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Desliza para buscar',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                Color(0xFF1E1E1C),
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .angleDoubleRight,
                                                                        color: Color(
                                                                            0xFF1E1E1C),
                                                                        size:
                                                                            24,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, -15.01),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          35,
                                                                          0,
                                                                          0),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      OngsRecord>>(
                                                                stream:
                                                                    queryOngsRecord(),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50,
                                                                        height:
                                                                            50,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          color:
                                                                              Color(0xFF4B39EF),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<OngsRecord>
                                                                      listViewOngsRecordList =
                                                                      snapshot
                                                                          .data;
                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    primary:
                                                                        false,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        listViewOngsRecordList
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            listViewIndex) {
                                                                      final listViewOngsRecord =
                                                                          listViewOngsRecordList[
                                                                              listViewIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16,
                                                                            8,
                                                                            16,
                                                                            8),
                                                                        child:
                                                                            InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => DetallesONGWidget(
                                                                                  ong: listViewOngsRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 0.85,
                                                                            height:
                                                                                170,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.cover,
                                                                                image: CachedNetworkImageProvider(
                                                                                  listViewOngsRecord.imagenFondo,
                                                                                ),
                                                                              ),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 3,
                                                                                  color: Color(0x64000000),
                                                                                  offset: Offset(0, 2),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(8),
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Card(
                                                                                            clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                            color: Color(0xFF1E1E1C),
                                                                                            elevation: 2,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(30),
                                                                                            ),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                if (listViewOngsRecord.favoritos.toList()?.contains(currentUserReference) ?? true)
                                                                                                  InkWell(
                                                                                                    onTap: () async {
                                                                                                      final ongsUpdateData = {
                                                                                                        'favoritos': FieldValue.arrayRemove([currentUserReference]),
                                                                                                      };
                                                                                                      await listViewOngsRecord.reference.update(ongsUpdateData);
                                                                                                    },
                                                                                                    child: Card(
                                                                                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                      color: Color(0xFF1E1E1C),
                                                                                                      elevation: 2,
                                                                                                      shape: RoundedRectangleBorder(
                                                                                                        borderRadius: BorderRadius.circular(30),
                                                                                                      ),
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                                                                                        child: Icon(
                                                                                                          Icons.favorite,
                                                                                                          color: FlutterFlowTheme.of(context).lineColor,
                                                                                                          size: 24,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                if (!(listViewOngsRecord.favoritos.toList()?.contains(currentUserReference)) ?? true)
                                                                                                  InkWell(
                                                                                                    onTap: () async {
                                                                                                      final ongsUpdateData = {
                                                                                                        'favoritos': FieldValue.arrayUnion([currentUserReference]),
                                                                                                      };
                                                                                                      await listViewOngsRecord.reference.update(ongsUpdateData);
                                                                                                    },
                                                                                                    child: Card(
                                                                                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                      color: Color(0xFF1E1E1C),
                                                                                                      elevation: 2,
                                                                                                      shape: RoundedRectangleBorder(
                                                                                                        borderRadius: BorderRadius.circular(30),
                                                                                                      ),
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                                                                                        child: Icon(
                                                                                                          Icons.favorite_border,
                                                                                                          color: FlutterFlowTheme.of(context).lineColor,
                                                                                                          size: 24,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      if (listViewOngsRecord.voluntariado ?? true)
                                                                                        Card(
                                                                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          elevation: 0,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(8),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(6, 2, 6, 2),
                                                                                            child: Text(
                                                                                              'Voluntariado',
                                                                                              style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                    fontFamily: 'Lexend Deca',
                                                                                                    color: FlutterFlowTheme.of(context).lineColor,
                                                                                                    fontSize: 14,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        listViewOngsRecord.displayName,
                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              fontSize: 16,
                                                                                              fontWeight: FontWeight.w800,
                                                                                            ),
                                                                                      ),
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            listViewOngsRecord.alc,
                                                                                            style: FlutterFlowTheme.of(context).bodyText1,
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  height: 60,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFF090F13),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(8),
                                                                                      bottomRight: Radius.circular(8),
                                                                                      topLeft: Radius.circular(0),
                                                                                      topRight: Radius.circular(0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Container(
                                                                                    width: MediaQuery.of(context).size.width,
                                                                                    height: 60,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFF1E1E1C),
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(8),
                                                                                        bottomRight: Radius.circular(8),
                                                                                        topLeft: Radius.circular(0),
                                                                                        topRight: Radius.circular(0),
                                                                                      ),
                                                                                    ),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 60,
                                                                                          height: 100,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Color(0x00FFFFFF),
                                                                                            borderRadius: BorderRadius.only(
                                                                                              bottomLeft: Radius.circular(8),
                                                                                              bottomRight: Radius.circular(0),
                                                                                              topLeft: Radius.circular(0),
                                                                                              topRight: Radius.circular(0),
                                                                                            ),
                                                                                          ),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      listViewOngsRecord.cat,
                                                                                                      textAlign: TextAlign.center,
                                                                                                      style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).lineColor,
                                                                                                            fontSize: 13,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      listViewOngsRecord.sub,
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).lineColor,
                                                                                                            fontSize: 10,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                      child: Text(
                                                                                                        listViewOngsRecord.tip,
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Poppins',
                                                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                                                              fontSize: 12,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    if (listViewOngsRecord.sello ?? true)
                                                                                                      FaIcon(
                                                                                                        FontAwesomeIcons.medal,
                                                                                                        color: Color(0xFFEFDD34),
                                                                                                        size: 12,
                                                                                                      ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 10, 0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  final paymentResponse = await processStripePayment(
                                                                                                    amount: 1,
                                                                                                    currency: 'EUR',
                                                                                                    customerEmail: currentUserEmail,
                                                                                                    customerName: currentJwtToken,
                                                                                                    description: currentUserUid,
                                                                                                    allowGooglePay: true,
                                                                                                    allowApplePay: false,
                                                                                                    themeStyle: ThemeMode.system,
                                                                                                    buttonColor: Color(0xFF4B39EF),
                                                                                                  );
                                                                                                  if (paymentResponse.paymentId == null) {
                                                                                                    if (paymentResponse.errorMessage != null) {
                                                                                                      showSnackbar(
                                                                                                        context,
                                                                                                        'Error: ${paymentResponse.errorMessage}',
                                                                                                      );
                                                                                                    }
                                                                                                    return;
                                                                                                  }
                                                                                                  final stripePaymentId = paymentResponse.paymentId;
                                                                                                },
                                                                                                text: 'DONAR',
                                                                                                options: FFButtonOptions(
                                                                                                  width: 80,
                                                                                                  height: 40,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  textStyle: GoogleFonts.getFont(
                                                                                                    'Lexend Deca',
                                                                                                    color: FlutterFlowTheme.of(context).lineColor,
                                                                                                    fontSize: 14,
                                                                                                  ),
                                                                                                  elevation: 3,
                                                                                                  borderSide: BorderSide(
                                                                                                    color: Colors.transparent,
                                                                                                    width: 1,
                                                                                                  ),
                                                                                                  borderRadius: 8,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        8,
                                                                        0,
                                                                        20),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          textController,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        'textController',
                                                                        Duration(
                                                                            milliseconds:
                                                                                500),
                                                                        () => setState(
                                                                            () {}),
                                                                      ),
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .bodyText2
                                                                            .override(
                                                                              fontFamily: 'Lexend Deca',
                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                        hintText:
                                                                            'Buscar ONG',
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .bodyText2
                                                                            .override(
                                                                              fontFamily: 'Lexend Deca',
                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                            width:
                                                                                1,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                            width:
                                                                                1,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            Color(0x941E1E1C),
                                                                        suffixIcon: textController.text.isNotEmpty
                                                                            ? InkWell(
                                                                                onTap: () => setState(
                                                                                  () => textController.clear(),
                                                                                ),
                                                                                child: Icon(
                                                                                  Icons.clear,
                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                  size: 22,
                                                                                ),
                                                                              )
                                                                            : null,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: Color(
                                                                      0xFF1E2429),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        30,
                                                                    buttonSize:
                                                                        46,
                                                                    fillColor:
                                                                        Color(
                                                                            0xFF1E1E1C),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .search_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                      size: 24,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      setState(() =>
                                                                          algoliaSearchResults =
                                                                              null);
                                                                      await OngsRecord
                                                                              .search(
                                                                        term: textController
                                                                            .text,
                                                                      )
                                                                          .then((r) => algoliaSearchResults =
                                                                              r)
                                                                          .onError((_, __) => algoliaSearchResults =
                                                                              [])
                                                                          .whenComplete(() =>
                                                                              setState(() {}));
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        57,
                                                                        0,
                                                                        0),
                                                            child: FutureBuilder<
                                                                List<
                                                                    OngsRecord>>(
                                                              future: OngsRecord
                                                                  .search(
                                                                term:
                                                                    textController
                                                                        .text,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width: 50,
                                                                      height:
                                                                          50,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        color: Color(
                                                                            0xFF4B39EF),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<OngsRecord>
                                                                    listViewOngsRecordList =
                                                                    snapshot
                                                                        .data;
                                                                if (listViewOngsRecordList
                                                                    .isEmpty) {
                                                                  return NobusquedaWidget();
                                                                }
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      listViewOngsRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listViewIndex) {
                                                                    final listViewOngsRecord =
                                                                        listViewOngsRecordList[
                                                                            listViewIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              16,
                                                                              8,
                                                                              16,
                                                                              8),
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            MaterialPageRoute(
                                                                              builder: (context) => DetallesONGWidget(
                                                                                ong: listViewOngsRecord.reference,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.85,
                                                                          height:
                                                                              170,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            image:
                                                                                DecorationImage(
                                                                              fit: BoxFit.cover,
                                                                              image: CachedNetworkImageProvider(
                                                                                listViewOngsRecord.imagenFondo,
                                                                              ),
                                                                            ),
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                blurRadius: 3,
                                                                                color: Color(0x64000000),
                                                                                offset: Offset(0, 2),
                                                                              )
                                                                            ],
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Card(
                                                                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                          color: Color(0xFF1E1E1C),
                                                                                          elevation: 2,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(30),
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (listViewOngsRecord.favoritos.toList()?.contains(currentUserReference) ?? true)
                                                                                                InkWell(
                                                                                                  onTap: () async {
                                                                                                    final ongsUpdateData = {
                                                                                                      'favoritos': FieldValue.arrayRemove([currentUserReference]),
                                                                                                    };
                                                                                                    await listViewOngsRecord.reference.update(ongsUpdateData);
                                                                                                  },
                                                                                                  child: Card(
                                                                                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                    color: Color(0xFF1E1E1C),
                                                                                                    elevation: 2,
                                                                                                    shape: RoundedRectangleBorder(
                                                                                                      borderRadius: BorderRadius.circular(30),
                                                                                                    ),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                                                                                      child: Icon(
                                                                                                        Icons.favorite,
                                                                                                        color: FlutterFlowTheme.of(context).lineColor,
                                                                                                        size: 24,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              if (!(listViewOngsRecord.favoritos.toList()?.contains(currentUserReference)) ?? true)
                                                                                                InkWell(
                                                                                                  onTap: () async {
                                                                                                    final ongsUpdateData = {
                                                                                                      'favoritos': FieldValue.arrayUnion([currentUserReference]),
                                                                                                    };
                                                                                                    await listViewOngsRecord.reference.update(ongsUpdateData);
                                                                                                  },
                                                                                                  child: Card(
                                                                                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                    color: Color(0xFF1E1E1C),
                                                                                                    elevation: 2,
                                                                                                    shape: RoundedRectangleBorder(
                                                                                                      borderRadius: BorderRadius.circular(30),
                                                                                                    ),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                                                                                      child: Icon(
                                                                                                        Icons.favorite_border,
                                                                                                        color: FlutterFlowTheme.of(context).lineColor,
                                                                                                        size: 24,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    if (listViewOngsRecord.voluntariado ?? true)
                                                                                      Card(
                                                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        elevation: 0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(6, 2, 6, 2),
                                                                                          child: Text(
                                                                                            'Voluntariado',
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: 'Lexend Deca',
                                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                                  fontSize: 14,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      listViewOngsRecord.displayName,
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Text(
                                                                                          listViewOngsRecord.alc,
                                                                                          style: FlutterFlowTheme.of(context).bodyText1,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                width: double.infinity,
                                                                                height: 60,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFF1E1E1C),
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(8),
                                                                                    bottomRight: Radius.circular(8),
                                                                                    topLeft: Radius.circular(0),
                                                                                    topRight: Radius.circular(0),
                                                                                  ),
                                                                                ),
                                                                                child: Container(
                                                                                  width: MediaQuery.of(context).size.width,
                                                                                  height: 60,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFF1E1E1C),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(8),
                                                                                      bottomRight: Radius.circular(8),
                                                                                      topLeft: Radius.circular(0),
                                                                                      topRight: Radius.circular(0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 60,
                                                                                        height: 100,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0x00FFFFFF),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(8),
                                                                                            bottomRight: Radius.circular(0),
                                                                                            topLeft: Radius.circular(0),
                                                                                            topRight: Radius.circular(0),
                                                                                          ),
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewOngsRecord.cat,
                                                                                                      'Cat',
                                                                                                    ),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).lineColor,
                                                                                                          fontSize: 13,
                                                                                                        ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewOngsRecord.sub,
                                                                                                      'sasa',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).lineColor,
                                                                                                          fontSize: 10,
                                                                                                        ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                    child: Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        listViewOngsRecord.tip,
                                                                                                        'tipo',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).lineColor,
                                                                                                            fontSize: 12,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  if (listViewOngsRecord.sello ?? true)
                                                                                                    FaIcon(
                                                                                                      FontAwesomeIcons.medal,
                                                                                                      color: Color(0xFFEFDD34),
                                                                                                      size: 12,
                                                                                                    ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 10, 0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                final paymentResponse = await processStripePayment(
                                                                                                  amount: 1,
                                                                                                  currency: 'EUR',
                                                                                                  customerEmail: currentUserEmail,
                                                                                                  customerName: currentJwtToken,
                                                                                                  description: currentUserUid,
                                                                                                  allowGooglePay: true,
                                                                                                  allowApplePay: false,
                                                                                                  themeStyle: ThemeMode.system,
                                                                                                  buttonColor: Color(0xFF4B39EF),
                                                                                                );
                                                                                                if (paymentResponse.paymentId == null) {
                                                                                                  if (paymentResponse.errorMessage != null) {
                                                                                                    showSnackbar(
                                                                                                      context,
                                                                                                      'Error: ${paymentResponse.errorMessage}',
                                                                                                    );
                                                                                                  }
                                                                                                  return;
                                                                                                }
                                                                                                final stripePaymentId = paymentResponse.paymentId;
                                                                                              },
                                                                                              text: 'DONAR',
                                                                                              options: FFButtonOptions(
                                                                                                width: 80,
                                                                                                height: 40,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                textStyle: GoogleFonts.getFont(
                                                                                                  'Lexend Deca',
                                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                                  fontSize: 14,
                                                                                                ),
                                                                                                elevation: 3,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 8,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 1),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: SmoothPageIndicator(
                                                      controller:
                                                          pageViewController ??=
                                                              PageController(
                                                                  initialPage:
                                                                      0),
                                                      count: 2,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      onDotClicked: (i) {
                                                        pageViewController
                                                            .animateToPage(
                                                          i,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  500),
                                                          curve: Curves.ease,
                                                        );
                                                      },
                                                      effect:
                                                          ExpandingDotsEffect(
                                                        expansionFactor: 2,
                                                        spacing: 8,
                                                        radius: 16,
                                                        dotWidth: 16,
                                                        dotHeight: 16,
                                                        dotColor:
                                                            Color(0xFF9E9E9E),
                                                        activeDotColor:
                                                            Color(0xFF3F51B5),
                                                        paintStyle:
                                                            PaintingStyle.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  alignment: AlignmentDirectional(0, 0),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: StreamBuilder<List<OngsRecord>>(
                                        stream: queryOngsRecord(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            );
                                          }
                                          List<OngsRecord>
                                              containerOngsRecordList =
                                              snapshot.data;
                                          return Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1,
                                            decoration: BoxDecoration(),
                                            child: AuthUserStreamWidget(
                                              child: FlutterFlowGoogleMap(
                                                controller:
                                                    googleMapsController,
                                                onCameraIdle: (latLng) =>
                                                    setState(() =>
                                                        googleMapsCenter =
                                                            latLng),
                                                initialLocation:
                                                    googleMapsCenter ??=
                                                        currentUserDocument
                                                            ?.localizacion,
                                                markers:
                                                    (containerOngsRecordList ??
                                                            [])
                                                        .map(
                                                          (containerOngsRecord) =>
                                                              FlutterFlowMarker(
                                                            containerOngsRecord
                                                                .reference.path,
                                                            containerOngsRecord
                                                                .localicacion,
                                                            () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return Padding(
                                                                    padding: MediaQuery.of(
                                                                            context)
                                                                        .viewInsets,
                                                                    child:
                                                                        InfoOngMapWidget(
                                                                      ongGood:
                                                                          containerOngsRecord,
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        )
                                                        .toList(),
                                                markerColor:
                                                    GoogleMarkerColor.orange,
                                                mapType: MapType.normal,
                                                style: GoogleMapStyle.standard,
                                                initialZoom: 14,
                                                allowInteraction: true,
                                                allowZoom: true,
                                                showZoomControls: true,
                                                showLocation: true,
                                                showCompass: true,
                                                showMapToolbar: true,
                                                showTraffic: false,
                                                centerMapOnMarkerTap: true,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 64,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
