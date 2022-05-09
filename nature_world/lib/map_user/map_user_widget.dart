import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MapUserWidget extends StatefulWidget {
  const MapUserWidget({
    Key key,
    this.ubiUser,
    this.ubiU2,
  }) : super(key: key);

  final UsersRecord ubiUser;
  final DocumentReference ubiU2;

  @override
  _MapUserWidgetState createState() => _MapUserWidgetState();
}

class _MapUserWidgetState extends State<MapUserWidget> {
  LatLng googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  var placePickerValue = FFPlace();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF1EEE0),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          child: Stack(
            alignment: AlignmentDirectional(0, 0),
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: AuthUserStreamWidget(
                      child: FlutterFlowGoogleMap(
                        controller: googleMapsController,
                        onCameraIdle: (latLng) =>
                            setState(() => googleMapsCenter = latLng),
                        initialLocation: googleMapsCenter ??=
                            currentUserDocument?.localizacion,
                        markerColor: GoogleMarkerColor.yellow,
                        mapType: MapType.normal,
                        style: GoogleMapStyle.standard,
                        initialZoom: 12,
                        allowInteraction: true,
                        allowZoom: true,
                        showZoomControls: false,
                        showLocation: true,
                        showCompass: true,
                        showMapToolbar: true,
                        showTraffic: false,
                        centerMapOnMarkerTap: true,
                      ),
                    ),
                  ),
                ],
              ),
              FaIcon(
                FontAwesomeIcons.mapMarkerAlt,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 54,
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.55),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 370, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          final usersUpdateData = createUsersRecordData(
                            localizacion: googleMapsCenter,
                          );
                          await currentUserReference.update(usersUpdateData);
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('¡Genial!'),
                                content: Text('Has actualizado su ubicación.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        text: 'Utilizar Ubicación del mapa',
                        icon: FaIcon(
                          FontAwesomeIcons.mapMarker,
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                        options: FFButtonOptions(
                          width: 280,
                          height: 40,
                          color: Color(0xFF4B39EF),
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).lineColor,
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.75),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 600, 0, 10),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 70,
                    icon: Icon(
                      Icons.cancel,
                      color: Color(0xBC1E1E1C),
                      size: 60,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(5, 40, 5, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                StreamBuilder<List<UsersRecord>>(
                                  stream: queryUsersRecord(
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
                                    List<UsersRecord>
                                        placePickerUsersRecordList =
                                        snapshot.data;
                                    // Return an empty Container when the document does not exist.
                                    if (snapshot.data.isEmpty) {
                                      return Container();
                                    }
                                    final placePickerUsersRecord =
                                        placePickerUsersRecordList.isNotEmpty
                                            ? placePickerUsersRecordList.first
                                            : null;
                                    return FlutterFlowPlacePicker(
                                      iOSGoogleMapsApiKey:
                                          'AIzaSyChcs0yF31A-xQxnzJ86d4gNsa8u1YN7aI',
                                      androidGoogleMapsApiKey:
                                          'AIzaSyAP9XnrdHGlhCG0eqttzjpAV7WGT4U4gUY',
                                      webGoogleMapsApiKey:
                                          'AIzaSyDTFryQxcaaREsp6jtg-kI80kjrcvB8B2U',
                                      onSelect: (place) => setState(
                                          () => placePickerValue = place),
                                      defaultText: 'Introducir',
                                      icon: FaIcon(
                                        FontAwesomeIcons.search,
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        size: 16,
                                      ),
                                      buttonOptions: FFButtonOptions(
                                        width: 220,
                                        height: 40,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    );
                                  },
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.05),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final usersUpdateData =
                                          createUsersRecordData(
                                        localizacion: placePickerValue.latLng,
                                      );
                                      await currentUserReference
                                          .update(usersUpdateData);
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('¡Genial!'),
                                            content: Text(
                                                'Has actualizado su ubicación.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    text: 'Aplicar',
                                    options: FFButtonOptions(
                                      width: 80,
                                      height: 40,
                                      color: Color(0xFF4B39EF),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            fontSize: 14,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
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
            ],
          ),
        ),
      ),
    );
  }
}
