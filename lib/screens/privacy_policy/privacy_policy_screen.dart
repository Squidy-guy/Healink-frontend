import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';

import '../../utils/app_colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: getHeight(148),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kGreyShade7Color,width: 1))
              ),
              child: Padding(
                padding: AppStyles().paddingHorizontal,
                child: Padding(
                  padding: EdgeInsets.only(top: getHeight(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.back();
                        },
                          child: Image.asset(kArrowIcon,height: getHeight(18),width: getWidth(18),)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Privacy Policy',style: AppStyles.primaryTextStyle().copyWith(fontWeight: FontWeight.w700,fontSize: 20),),
                          SizedBox(height: 6,),
                          Text('Last updated on 06/12/2024',style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w700,fontSize: 14),)
                        ],
                      ),
                      SizedBox(width: getWidth(10),)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: AppStyles().paddingAll24,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Thank you for choosing to be part of our community at Healink (\"Company," "we," "us,\" or \"our\"). We are committed to protecting your personal information and your right to privacy. If you have any questions or concerns about this privacy notice or our practices with regard to your personal information, please contact us at hello@healink.io "
                                "\n\nThis privacy notice describes how we might use your information. The purpose of this privacy notice is to explain to you in the clearest way possible what information we collect, how we use it, and what rights you have in relation to it. If there are any terms in this privacy notice that you do not agree with, please discontinue use of our Services immediately."
                                "\n\nPlease read this privacy notice carefully, as it will help you understand what we do with the information that we collect.",
                      style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "\n1. WHAT INFORMATION DO WE COLLECT?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "Personal information you disclose to us In Short: We collect personal information that you provide to us. We collect personal information that you voluntarily provide to us when you register on the express an interest in obtaining information about us or our products and Services, when you participate in activities on the site or app (such as by posting messages in our online forums or entering competitions, contests or giveaways) or otherwise when you contact us."
                                "\n\n The personal information that we collect depends on the context of your interactions with us and the choices you make and the products and features you use. The personal information we collect may include the following:",
                            style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n- Names"
                          "\n- Phone numbers"
                          "\n- Email addresses"
                          "\n- User names"
                          "\n- Passwords"
                          "\n- Contact preferences"
                          "\n- Billing addresses"
                          "\n- Debit/credit card numbers"
                          "\n- Health/lifestyle information\n"
                      , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                           "All personal information that you provide to us must be true, complete and accurate, and you must notify us of any changes to such personal information.Information automatically collected. In Short: Some information such as your Internet Protocol (IP) address and/or browser and device characteristics is collected automatically when you visit our site and or app."
                               "\nWe automatically collect certain information when you visit, use or navigate the. This information does not reveal your specific identity (like your name or contact information) but may include device and usage information, such as your IP address, browser and device characteristics, operating system, language preferences, referring URLs, device name, country, location, information about how and when you use our and other technical information. This information is primarily needed to maintain the security and operation of our, and for our internal analytics and reporting purposes."
                      , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n2. WILL YOUR INFORMATION BE SHARED WITH ANYONE?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "In Short: We only share information with your consent, to comply with laws, to provide you with services, to protect your rights, or to fulfill business obligations."
                                "\nWe may process or share your data that we hold based on the following legal basis: More specifically, we may need to process your data or share your personal information in the following situations:"
                                "\n\n• Business Transfers. We may share or transfer your information in connection with, or during negotiations of, any merger, sale of company assets, financing, or acquisition of all or a portion of our business to another company."
                                "\n\n• Affiliates. We may share your information with our affiliates, in which case we will require those affiliates to honor this privacy notice. Affiliates include our parent company and any subsidiaries, joint venture partners or other companies that we control or that are under common control with us."
                                "\n\n• Business Partners. We may share your information with our business partners to offer you certain products, services or promotions."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n3. DO WE USE COOKIES AND OTHER TRACKING TECHNOLOGIES?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "In Short: If you choose to register or log in to our services using a social media account, we may have access to certain information about you."
                                "\n\nOur offers you the ability to register and login using your third-party social media account details (like your Facebook, Google, or Twitter logins). Where you choose to do this, we will receive certain profile information about you from your social media provider. The profile information we receive may vary depending on the social media provider concerned, but will often include your name, email address, friends list, profile picture as well as other information you choose to make public on such social media platform."
                                "\n\nWe will use the information we receive only for the purposes that are described in this privacy notice or that are otherwise made clear to you on the relevant. Please note that we do not control, and are not responsible for, other uses of your personal information by your third-party social media provider. We recommend that you review their privacy notice to understand how they collect, use and share your personal information, and how you can set your privacy preferences on their sites and apps."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n5.  IS YOUR INFORMATION TRANSFERRED INTERNATIONALLY?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "In Short: We may transfer, store, and process your information in countries other than your own."
                                "\n\nOur servers are located in. If you are accessing our from outside, please be aware that your information may be transferred to, stored, and processed by us in our facilities and by those third parties with whom we may share your personal information (see \"WILL YOUR INFORMATION BE SHARED WITH ANYONE?\" above), in and other countries."
                                "\n\nIf you are a resident in the European Economic Area (EEA) or United Kingdom (UK), then these countries may not necessarily have data protection laws or other similar laws as comprehensive as those in your country. We will however take all necessary measures to protect your personal information in accordance with this privacy notice and applicable law."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n6. HOW LONG DO WE KEEP YOUR INFO?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "In Short: We keep your information for as long as necessary to fulfill the purposes outlined in this privacy notice unless otherwise required by law."
                                "\n\nWe will only keep your personal information for as long as it is necessary for the purposes set out in this privacy notice, unless a longer retention period is required or permitted by law (such as tax, accounting or other legal requirements)."
                                "\n\nWhen we have no ongoing legitimate business need to process your personal information, we will either delete or anonymize such information, or, if this is not possible (for example, because your personal information has been stored in backup archives), then we will securely store your personal information and isolate it from any further processing until deletion is possible."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n7. DO WE COLLECT INFORMATION FROM MINORS?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "In Short: We do not knowingly collect data from or market to children under 18 years of age."
                                "\n\nWe do not knowingly solicit data from or market to children under 18 years of age. By using the website and or mobile application, you represent that you are at least 18 or that you are the parent or guardian of such a minor and consent to such minor dependent's use of the services."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n8. WHAT ARE YOUR PRIVACY RIGHTS?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "In Short: You may review, change, or terminate your account at any time."
                                "\n\nIf you are a resident in the EEA or UK and you believe we are unlawfully processing your personal information, you also have the right to complain to your local data protection supervisory authority. You can find their contact details here: https://ec.europa.eu/justice/data-protection/bodies/authorities/indexen.htm."
                                "\n\nIf you are a resident in Switzerland, the contact details for the data protection authorities are available here: https://www.edoeb.admin.ch/edoeb/en/home.html."
                                "\n\nAccount Information"
                                "\n\nIf you would at any time like to review or change the information in your account or terminate your account, you can: Upon your request to terminate your account, we will deactivate or delete your account and information from our active databases. However, we may retain some information in our files to prevent fraud, troubleshoot problems, assist with any investigations, enforce our Terms of Use and/or comply with applicable legal requirements."
                                "\n\nOpting out of email marketing: You can unsubscribe from our marketing email list at any time by clicking on the unsubscribe link in the emails that we send or by contacting us using the details provided below. You will then be removed from the marketing email list-however, we may still communicate with you, for example to send you service-related emails that are necessary for the administration and use of your account, to respond to service requests, or for other non-marketing purposes. To otherwise opt-out, you may contact us at hello@healink.io or by simply clicking the “unsubscribe” link at the bottom of an email we send to you."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n9. CONTROLS FOR DO-NOT-TRACK FEATURES",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "Most web browsers and some mobile operating systems and mobile applications include a Do-Not-Track (DNT\") feature or setting you can activate to signal your privacy preference not to have data about your online browsing activities monitored and collected. At this stage no uniform technology standard for recognizing and implementing DNT signals has been finalized. As such, we do not currently respond to DNT browser signals or any other mechanism that automatically communicates your choice not to be tracked online. If a standard for online tracking is adopted that we must follow in the future, we will inform you about that practice in a revised version of this privacy notice."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n10. DO CALIFORNIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                      "In Short: Yes, if you are a resident of California, you are granted specific rights regarding access to your personal information."
                          "\n\nCalifornia Civil Code Section 1798.83, also known as the \"Shine The Light\" law, permits our users who are California residents to request and obtain from us, once a year and free of charge, information about categories of personal information (if any) we disclosed to third parties for direct marketing purposes and the names and addresses of all third parties with which we shared personal information in the immediately preceding calendar year. If you are a California resident and would like to make such a request, please submit your request in writing to us using the contact information provided below."
                          "\n\nIf you are under 18 years of age, reside in California, and have a registered account with, you have the right to request removal of unwanted data that you publicly post on the. To request removal of such data, please contact us using the contact information provided below, and include the email address associated with your account and a statement that you reside in California. We will make sure the data is not publicly displayed on the, but please be aware that the data may not be completely or comprehensively removed from all our systems (e.g. backups, etc.)."
                      , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n11. DO WE MAKE UPDATES TO THIS NOTICE?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                      "In Short: Yes, we will update this notice as necessary to stay compliant with relevant laws.We may update this privacy notice from time to time. The updated version will be indicated by an updated \"Revised\" date and the updated version will be effective as soon as it is accessible. If we make material changes to this privacy notice, we may notify you either by prominently posting a notice of such changes or by directly sending you a notification. We encourage you to review this privacy notice frequently to be informed of how we are protecting your information.c.)."
                      , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n12. HOW CAN YOU CONTACT US ABOUT THIS NOTICE?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "If you have questions or comments about this notice, you may email us at hello@healink.io"
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\n13. HOW CAN YOU REVIEW, UPDATE, OR DELETE THE DATA WE COLLECT FROM YOU?",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "Based on the applicable laws of your country, you may have the right to request access to the personal information we collect from you, change that information, or delete it in some circumstances. To request to review, update, or delete your personal information, please contact hello@healink.io"
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
