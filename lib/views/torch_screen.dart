import 'package:flutter/material.dart';
import 'package:torch/models/app_colors.dart';
import 'package:torch_light/torch_light.dart';

class FlashLight extends StatefulWidget {
  const FlashLight({super.key});

  @override
  State<FlashLight> createState() => _FlashLightState();
}

class _FlashLightState extends State<FlashLight> {
  bool _isOn = false;

  Future<void> toggleTorch() async {
    try {
      if (_isOn) {
        await TorchLight.disableTorch();
      } else {
        await TorchLight.enableTorch();
      }
      setState(() {
        _isOn = !_isOn;
      });
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to toggle torch: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: toggleTorch,
            child: Image.asset(
              'assets/Torch-PNG-Transparent-Picture 1.png',
              fit: BoxFit.cover,
              height: 120,
              color:
                  _isOn
                      ? AppColors.yellowAccent
                      : AppColors.whiteColor, // Changed to Colors.yellow
              colorBlendMode: BlendMode.modulate,
            ),
          ),
        ],
      ),
    );
  }
}
