import 'package:flutter/material.dart';

final kTextFieldDecoration = InputDecoration(
  border: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
  enabled: true,
  hintStyle: const TextStyle(
    color: Color(0xFF58667E),
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
  alignLabelWithHint: true,
  filled: true,
  fillColor: const Color(0xFFF8FAFD),
  // contentPadding: EdgeInsets.all(5),

  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color.fromARGB(255, 211, 211, 211)),
    borderRadius: BorderRadius.circular(10.0),
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: const BorderSide(color: Color.fromARGB(255, 245, 239, 239)),
    borderRadius: BorderRadius.circular(10.0),
  ),
);

final kOTPFieldDecoration = InputDecoration(
  border: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
  enabled: true,
  hintStyle: const TextStyle(
    color: Color(0xFF58667E),
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
  alignLabelWithHint: true,
  filled: true,
  fillColor: const Color(0xFFFEFF2F5),
  contentPadding: const EdgeInsets.all(5),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color.fromARGB(255, 211, 211, 211)),
    borderRadius: BorderRadius.circular(10.0),
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: const BorderSide(color: Color.fromARGB(255, 245, 239, 239)),
    borderRadius: BorderRadius.circular(10.0),
  ),
);
