import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({Key key}) : super(key: key);

  @override
  _RegistroWidgetState createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  bool passwordVisibility;
  TextEditingController textController4;
  TextEditingController textController5;
  TextEditingController textController6;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    passwordVisibility = false;
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF040A32),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(120, 0, 0, 0),
          child: Text(
            'Registro',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFF424444),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: TextFormField(
                      controller: textController1,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Nombre',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xB0FFFFFF),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: TextFormField(
                      controller: textController2,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Email',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xB0FFFFFF),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: TextFormField(
                      controller: textController3,
                      obscureText: !passwordVisibility,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Contraseña',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => passwordVisibility = !passwordVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            passwordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Color(0xB0FFFFFF),
                            size: 22,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: TextFormField(
                      controller: textController4,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Apellidos',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        prefixIcon: Icon(
                          Icons.people_alt,
                          color: Color(0xB0FFFFFF),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: TextFormField(
                      controller: textController5,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Numero de telefono',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Color(0xB0FFFFFF),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: TextFormField(
                      controller: textController6,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Genero',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xB0FFFFFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        prefixIcon: Icon(
                          Icons.lens,
                          color: Color(0xB0FFFFFF),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final usuariosCreateData = createUsuariosRecordData(
                        nombre: textController1.text,
                        email: textController2.text,
                        con: textController3.text,
                        apellidos: textController4.text,
                        numTel: textController5.text,
                        genero: textController6.text,
                      );
                      await UsuariosRecord.collection
                          .doc()
                          .set(usuariosCreateData);
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NavBarPage(initialPage: 'HomePage'),
                        ),
                      );
                    },
                    text: 'Guardar',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Colors.black,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
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
      ),
    );
  }
}
