import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import '../../utils/app_colors.dart';

class DisclaimerScreen extends StatelessWidget {
  const DisclaimerScreen({super.key});

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
                          Text('Disclaimer',style: AppStyles.primaryTextStyle().copyWith(fontWeight: FontWeight.w700,fontSize: 20),),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            "WEBSITE & MEDICAL DISCLAIMER \n",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "The information provided by Healink Pty Ltd (\"we,\" \"us\", or \"our\") on healink.io (the \"Site\") and our mobile application is for general informational purposes only. Particularly, information relating to specific medical conditions, health care, preventive care, and healthy lifestyles, is presented for general informational purposes only and It should not be considered complete or exhaustive and does not cover all disorders or conditions or their treatment. The information we provide is not intended as a substitute for the advice provided by your own physician or health care provider, and may not necessarily take your individual health situation into account. All information on the Site, our mobile application, and any external links is provided in good faith, however we make no representation or warranty of any kind, express or implied, regarding the accuracy, adequacy, validity, reliability, availability or completeness of any information on the Site, our mobile application, or linked external pages. UNDER NO CIRCUMSTANCE SHALL WE HAVE ANY LIABILITY TO YOU FOR ANY LOSS OR DAMAGE OF ANY KIND INCURRED AS A RESULT OF THE USE OF THE SITE OR OUR MOBILE APPLICATION OR RELIANCE ON ANY INFORMATION PROVIDED ON THE SITE AND OUR MOBILE APPLICATION. YOUR USE OF THE SITE AND OUR MOBILE APPLICATION AND YOUR RELIANCE ON ANY INFORMATION ON THE SITE AND OUR MOBILE APPLICATION IS SOLELY AT YOUR OWN RISK."
                      "\n\nBy using the Healink's Site and applications you agree not to rely solely on any of the information contained herein. Never disregard professional medical advice or delay in seeking it because of something you have read on the Healink Site or application. Always seek the advice of your physician or other qualified health provider with any questions you may have regarding a medical condition including treatment or diagnosis. This Site is not intended to provide diagnosis, treatment or medical advice. Speak to your healthcare provider before starting any new program. The claims made about specific interventions on or through this Site have not been evaluated by the United States Food and Drug Administration or the Australian Food and Drug Administration and are not approved to diagnose, treat, cure or prevent disease. Information provided on this Site and linked websites, including information relating to medical and health conditions, treatments and products may be provided in summary form. Information on this Site including any product label or packaging should not be considered as a substitute for advice from a healthcare professional. This Site does not recommend self-management of serious health issues. Information on this Site is not comprehensive and does not cover all diseases, ailments, physical conditions or their treatment. Contact your healthcare professional promptly should you have any health related questions. Never disregard or delay medical advice based upon information you may have read on this Site."
                      "\n\nWe (and guest authors) assume no liability or responsibility for any errors or omissions in the content of this Site. Healink is not responsible for the thoughts and opinions of third-party contributors to the Site or mobile application. These include published articles, guest posts, featured pieces, or opinions."
                      "\n\nThe contents of the Healink Site and mobile application, such as graphics, images, and other materials created by Healink or obtained via \"fair use\", and other materials contained on the Healink website (collectively, \"content\") are for informational purposes only."
                      "\n\nFair use is a use permitted by copyright statute that might otherwise be infringing. Allowance is made for \"fair use\" for purposes such as criticism, comment, news reporting, teaching, scholarship, education and research. Educational use tips the balance in favour of fair use. This Site is for educational purposes only. The material on this Site is provided for educational and informational purposes. All photos, videos, illustrations, concepts, and other intellectual property that have not been created by Healink have either been purchased, used with permission, credited and linked back to their original sources or believed to be public domain. It is believed that this constitutes a \"fair use of any such copyrighted material as provided for in section 107 of the US Copyright Law. In accordance with Title 17 U.S.C. Section 107, the material on this Site is distributed without profit to those who have an interest in using the included information for research and educational purposes. If you wish to use copyrighted material from this Site for purposes of your own that go beyond \"fair use\", you must obtain permission from the copyright owner. The information on this Site does not constitute legal or technical advice."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\nEXTERNAL LINKS DISCLAIMER",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                    "The Site and our mobile application may contain (or you may be sent through the Site or our mobile application) links to other websites or content belonging to or originating from third parties or links to websites and features in banners or other advertising. Such external links are not investigated, monitored, or checked for accuracy, adequacy, validity, reliability, availability or completeness by us. WE DO NOT WARRANT, ENDORSE, GUARANTEE, OR ASSUME RESPONSIBILITY FOR THE ACCURACY OR RELIABILITY OF ANY INFORMATION OFFERED BY THIRD-PARTY WEBSITES LINKED THROUGH THE SITE OR ANY WEBSITE OR FEATURE LINKED IN ANY BANNER OR OTHER ADVERTISING. WE WILL NOT BE A PARTY TO OR IN ANY WAY BE RESPONSIBLE FOR MONITORING ANY TRANSACTION BETWEEN YOU AND THIRD-PARTY PROVIDERS OF PRODUCTS OR SERVICES.\n\n"
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "PROFESSIONAL DISCLAIMER",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "The Site cannot and does not contain medical/health advice. The medical/health information is provided for general informational and educational purposes only and is not a substitute for professional advice. Accordingly, before taking any actions based upon such information, we encourage you to consult with the appropriate professionals. We do not provide any kind of medical/health advice. THE USE OR RELIANCE OF ANY INFORMATION CONTAINED ON THE SITE OR OUR MOBILE APPLICATION IS SOLELY AT YOUR OWN RISK."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            "\nTESTIMONIALS DISCLAIMER",style: AppStyles.poppinsTextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                    "The Site may contain testimonials by users of our products and/or services. These testimonials reflect the real-life experiences and opinions of such users. However, the experiences are personal to those particular users, and may not necessarily be representative of all users of our products and/or services. We do not claim, and you should not assume, that all users will have the same experiences. YOUR INDIVIDUAL RESULTS MAY VARY."
                        "\n\nThe testimonials on the Site are submitted in various forms such as text, audio and/or video, and are reviewed by us before being posted. They appear on the Site verbatim as given by the users, except for the correction of grammar or typing errors. Some testimonials may have been shortened for the sake of brevity where the full testimonial contained extraneous information not relevant to the general public."
                        "\n\nThe views and opinions contained in the testimonials belong solely to the individual user and do not reflect our views and opinions. We are not affiliated with users who provide testimonials, and users are not paid or otherwise compensated for their testimonials."
                        "\n\nThe testimonials on the Site are not intended, nor should they be construed, as claims that our products and/or services can be used to diagnose, treat, mitigate, cure, prevent or otherwise be used for any disease or medical condition. No testimonials have been clinically proven or evaluated."
                            , style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: kGreyShade6Color),)),
                    ],
                  ),
                  SizedBox(height: getHeight(50),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
