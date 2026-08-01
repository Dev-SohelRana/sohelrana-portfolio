import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/constants/contact_data.dart';
import 'package:sohelrana_portfolio/constants/social_links.dart';
import 'package:sohelrana_portfolio/features/sections/contact/widgets/contact_info_card.dart';
import 'package:sohelrana_portfolio/services/url_service.dart';
import 'package:sohelrana_portfolio/common_widgets/hover_scale.dart';
import '../../../app/scroll_sections.dart';
import '../../../common_widgets/responsive_container.dart';
import '../../../common_widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollSections.contactKey,
      padding: const EdgeInsets.symmetric(vertical: 120),
      child: ResponsiveContainer(
        child: Column(
          children: [
            const SectionTitle(
              title: "Let's Work Together",
              subtitle: "Contact",
            ),

            const SizedBox(height: 70),

            LayoutBuilder(
              builder: (context, constraints) {
                final desktop = constraints.maxWidth >= 950;

                if (desktop) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(flex: 4, child: _ContactInfo()),

                      const SizedBox(width: 50),

                      Expanded(flex: 6, child: _ContactForm()),
                    ],
                  );
                }

                return Column(
                  children: const [
                    _ContactInfo(),
                    SizedBox(height: 40),
                    _ContactForm(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactInfo extends StatelessWidget {
  const _ContactInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let's build something amazing together.",
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 16),

        Text(
          "I'm always open to discussing new opportunities, freelance projects, or full-time roles. Feel free to reach out through any of the following platforms.",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.grey.shade700,
            height: 1.7,
          ),
        ),

        const SizedBox(height: 40),

        ...ContactData.items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: ContactInfoCard(
              item: item,
              onTap: () {
                switch (item.title) {
                  case "Email":
                    UrlService.email(item.value);
                    break;

                  case "Phone":
                    UrlService.phone(item.value);
                    break;

                  case "Location":
                    UrlService.open(
                      "https://maps.google.com/?q=${Uri.encodeComponent(item.value)}",
                    );
                    break;
                }
              },
            ),
          ),
        ),

        const SizedBox(height: 35),

        Text(
          "Follow Me",
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 18),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _SocialButton(
              icon:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/GitHub_Invertocat_Logo.svg/250px-GitHub_Invertocat_Logo.svg.png',
              label: "GitHub",
              onTap: () => UrlService.open(SocialLinks.github),
            ),

            _SocialButton(
              icon:
                  'https://cdn.iconscout.com/icon/free/png-256/free-linkedin-icon-svg-download-png-189774.png?f=webp&w=128',
              label: "LinkedIn",
              onTap: () => UrlService.open(SocialLinks.linkedin),
            ),

            // _SocialButton(
            //   icon:
            //       'https://img.magnific.com/premium-psd/facebook-logo-blue-circle_705838-12823.jpg?semt=ais_hybrid&w=740&q=80',
            //   label: "Facebook",
            //   onTap: () => UrlService.open(SocialLinks.facebook),
            // ),
          ],
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback onTap;

  const _SocialButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 90,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedNetworkImage(
              imageUrl: icon,
              height: 28,
              color: Theme.of(context).colorScheme.primary,
              placeholder: (context, url) {
                return const CircularProgressIndicator();
              },
            ),

            const SizedBox(height: 10),

            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactForm extends StatefulWidget {
  const _ContactForm();

  @override
  State<_ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<_ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final contactEmail = ContactData.items.firstWhere(
      (item) => item.title == "Email",
    );

    final subject = _subjectController.text.trim().isNotEmpty
        ? _subjectController.text.trim()
        : "Portfolio Contact Inquiry";

    final message =
        """
Name: ${_nameController.text.trim()}
Email: ${_emailController.text.trim()}

Message:
${_messageController.text.trim()}
""";

    await UrlService.open(
      'mailto:${contactEmail.value}?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(message)}',
    );

    if (!mounted) return;

    _nameController.clear();
    _emailController.clear();
    _subjectController.clear();
    _messageController.clear();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Your email app is opening with the message draft."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Please enter your name.";
                }
                return null;
              },
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Please enter your email.";
                }
                final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
                if (!emailRegex.hasMatch(value.trim())) {
                  return "Please enter a valid email address.";
                }
                return null;
              },
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller: _subjectController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Subject",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller: _messageController,
              maxLines: 6,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                labelText: "Message",
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Please enter your message.";
                }
                return null;
              },
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: HoverScale(
                child: FilledButton.icon(
                  onPressed: _submitForm,
                  icon: const Icon(Icons.send_outlined),
                  label: const Text("Send Message"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
