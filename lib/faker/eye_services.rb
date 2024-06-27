
require 'faker'

module Faker
  class EyeServices < Base
    class << self
      def service_name(disease_name)
        case disease_name
        when "Cataracts"
          [
            "Cataract Evaluation",
            "Cataract Surgery",
            "Post-op Cataract Care",
            "Advanced Lens Replacement"
          ].sample
        when "Glaucoma"
          [
            "Glaucoma Screening",
            "Glaucoma Treatment",
            "Laser Glaucoma Therapy",
            "Intraocular Pressure Management"
          ].sample
        when "Macular Degeneration"
          [
            "Macular Degeneration Evaluation",
            "AMD Treatment",
            "Macular Imaging",
            "Vitamin Supplements"
          ].sample
        when "Diabetic Retinopathy"
          [
            "Diabetic Eye Exam",
            "Retinal Imaging",
            "Diabetic Retinopathy Management",
            "Laser Photocoagulation"
          ].sample
        when "Retinal Detachment"
          [
            "Retinal Detachment Surgery",
            "Retina Repair",
            "Post-op Retina Care",
            "Vitrectomy"
          ].sample
        when "Conjunctivitis (Pink Eye)"
          [
            "Conjunctivitis Consultation",
            "Antibiotic Eye Drops",
            "Viral Conjunctivitis Treatment",
            "Allergic Conjunctivitis Care"
          ].sample
        when "Dry Eye Syndrome"
          [
            "Dry Eye Evaluation",
            "Artificial Tear Therapy",
            "Punctal Plugs",
            "Intense Pulsed Light Therapy"
          ].sample
        when "Strabismus"
          [
            "Strabismus Evaluation",
            "Eye Muscle Surgery",
            "Pediatric Strabismus Treatment",
            "Prism Glasses"
          ].sample
        when "Retinitis Pigmentosa"
          [
            "Retinitis Pigmentosa Consultation",
            "Genetic Testing",
            "Low Vision Aids",
            "Retinal Implants"
          ].sample
        when "Amblyopia (Lazy Eye)"
          [
            "Amblyopia Evaluation",
            "Patching Therapy",
            "Vision Therapy",
            "Eye Patch for Amblyopia"
          ].sample
        when "Keratoconus"
          [
            "Keratoconus Consultation",
            "Corneal Cross-Linking",
            "Scleral Lens Fitting",
            "Gas Permeable Contact Lenses"
          ].sample
        when "Uveitis"
          [
            "Uveitis Diagnosis",
            "Steroid Treatment",
            "Immunosuppressive Therapy",
            "Uveitis Management"
          ].sample
        when "Ptosis"
          [
            "Ptosis Surgery",
            "Eyelid Lift",
            "Levator Muscle Repair",
            "Blepharoplasty"
          ].sample
        when "Blepharitis"
          [
            "Blepharitis Consultation",
            "Eyelid Hygiene",
            "Warm Compress Therapy",
            "Prescription Eyelid Cleanser"
          ].sample
        when "Macular Hole"
          [
            "Macular Hole Evaluation",
            "Vitrectomy",
            "Intraocular Gas Injection",
            "Post-op Macular Care"
          ].sample
        when "Choroidal Neovascularization"
          [
            "CNV Diagnosis",
            "Anti-VEGF Therapy",
            "Photodynamic Therapy",
            "Retinal Angiography"
          ].sample
        when "Presbyopia"
          [
            "Presbyopia Evaluation",
            "Reading Glasses",
            "Multifocal Contact Lenses",
            "PresbyLASIK"
          ].sample
        when "Color Blindness (Color Vision Deficiency)"
          [
            "Color Vision Test",
            "Color Blind Glasses",
            "Color Vision Correction",
            "EnChroma Lenses"
          ].sample
        when "Retinoblastoma"
          [
            "Retinoblastoma Screening",
            "Eye Cancer Treatment",
            "Chemotherapy",
            "Radiation Therapy"
          ].sample
        when "Myopia (Nearsightedness)"
          [
            "Myopia Control Consultation",
            "Orthokeratology",
            "MiSight Contact Lenses",
            "Atropine Eye Drops"
          ].sample
        else
          "General Eye Care"
        end
      end

      def description(service_name)
        case service_name
        when "Cataract Evaluation"
          "Comprehensive assessment to diagnose cataracts and evaluate their impact on vision."
        when "Cataract Surgery"
          "Surgical procedure to remove clouded lenses and restore clear vision."
        when "Post-op Cataract Care"
          "Follow-up care after cataract surgery to monitor healing and vision improvement."
        when "Advanced Lens Replacement"
          "Implantation of premium intraocular lenses to improve vision quality after cataract removal."
        when "Glaucoma Screening"
          "Tests and evaluations to detect signs of glaucoma early, helping to prevent vision loss."
        when "Glaucoma Treatment"
          "Therapeutic interventions to manage intraocular pressure and preserve optic nerve health."
        when "Laser Glaucoma Therapy"
          "Use of laser technology to enhance fluid drainage and reduce pressure inside the eye."
        when "Intraocular Pressure Management"
          "Customized treatment plans to maintain healthy eye pressure and prevent glaucoma progression."
        when "Macular Degeneration Evaluation"
          "Diagnostic procedures to assess macular health and identify signs of degeneration."
        when "AMD Treatment"
          "Therapeutic strategies to slow or manage the progression of age-related macular degeneration."
        when "Macular Imaging"
          "Advanced imaging techniques to capture detailed pictures of the macula for diagnosis."
        when "Vitamin Supplements"
          "Prescription of nutritional supplements to support macular health and function."
        when "Diabetic Eye Exam"
          "Specialized eye examination to detect diabetic retinopathy and other diabetes-related eye conditions."
        when "Retinal Imaging"
          "High-resolution imaging to evaluate and monitor diabetic retinopathy progression."
        when "Diabetic Retinopathy Management"
          "Comprehensive treatment strategies to preserve vision and manage diabetic retinopathy."
        when "Laser Photocoagulation"
          "Use of laser energy to seal leaking blood vessels in the retina, a common treatment for diabetic retinopathy."
        when "Retinal Detachment Surgery"
          "Emergency procedure to repair detached retina and restore vision."
        when "Retina Repair"
          "Surgical interventions to reattach and stabilize the retina after detachment."
        when "Post-op Retina Care"
          "Post-operative care and monitoring to ensure successful recovery after retinal surgery."
        when "Conjunctivitis Consultation"
          "Evaluation and diagnosis of conjunctivitis (pink eye) to determine appropriate treatment."
        when "Antibiotic Eye Drops"
          "Prescription of antibiotic drops to treat bacterial conjunctivitis effectively."
        when "Viral Conjunctivitis Treatment"
          "Management strategies to alleviate symptoms and shorten the duration of viral conjunctivitis."
        when "Allergic Conjunctivitis Care"
          "Treatment options to relieve symptoms of allergic conjunctivitis and prevent recurrence."
        when "Dry Eye Evaluation"
          "Assessment to diagnose dry eye syndrome and determine the severity of symptoms."
        when "Artificial Tear Therapy"
          "Prescription of artificial tears or lubricating eye drops to relieve dry eye symptoms."
        when "Punctal Plugs"
          "Insertion of small plugs into tear ducts to prevent tears from draining too quickly."
        when "Intense Pulsed Light Therapy"
          "Use of IPL technology to alleviate dry eye symptoms and improve tear production."
        when "Strabismus Evaluation"
          "Comprehensive evaluation to diagnose strabismus and determine the best treatment approach."
        when "Eye Muscle Surgery"
          "Surgical correction of eye muscle alignment to improve binocular vision and alignment."
        when "Pediatric Strabismus Treatment"
          "Specialized care and treatments designed for children with strabismus."
        when "Prism Glasses"
          "Prescription eyeglasses with prism lenses to manage double vision caused by strabismus."
        when "Retinitis Pigmentosa Consultation"
          "Consultation and diagnostic testing to evaluate the progression of retinitis pigmentosa."
        when "Genetic Testing"
          "Testing to identify specific genetic mutations associated with retinitis pigmentosa."
        when "Low Vision Aids"
          "Assistive devices and technologies to improve visual function for individuals with low vision."
        when "Retinal Implants"
          "Implantation of electronic devices to replace damaged retinal cells and improve vision."
        when "Amblyopia Evaluation"
          "Thorough evaluation to diagnose and assess the severity of amblyopia (lazy eye)."
        when "Patching Therapy"
          "Treatment involving patching the stronger eye to encourage visual development in the weaker eye."
        when "Vision Therapy"
          "Customized program of exercises and activities to improve visual skills and binocular vision."
        when "Eye Patch for Amblyopia"
          "Specialized eye patches designed to treat amblyopia by improving vision in the weaker eye."
        when "Keratoconus Consultation"
          "Consultation and corneal topography to diagnose keratoconus and assess corneal irregularities."
        when "Corneal Cross-Linking"
          "Minimally invasive procedure to strengthen corneal tissue and slow the progression of keratoconus."
        when "Scleral Lens Fitting"
          "Custom fitting of scleral contact lenses to correct vision and improve comfort for keratoconus patients."
        when "Gas Permeable Contact Lenses"
          "Prescription contact lenses designed for improved vision and comfort in patients with keratoconus."
        when "Uveitis Diagnosis"
          "Diagnostic tests and examinations to identify the underlying cause of uveitis."
        when "Steroid Treatment"
          "Prescription of corticosteroid medications to reduce inflammation associated with uveitis."
        when "Immunosuppressive Therapy"
          "Medications to suppress the immune system and manage chronic uveitis."
        when "Uveitis Management"
          "Comprehensive treatment plan to alleviate symptoms and prevent complications of uveitis."
        when "Ptosis Surgery"
          "Surgical correction of droopy eyelids (ptosis) to restore normal eyelid function and appearance."
        when "Eyelid Lift"
          "Cosmetic procedure to lift and rejuvenate drooping eyelids for a more youthful appearance."
        when "Levator Muscle Repair"
          "Surgical repair of the levator muscle to improve eyelid positioning and function."
        when "Blepharoplasty"
          "Surgical procedure to reshape eyelids and improve vision obstructed by excess eyelid skin."
        when "Blepharitis Consultation"
          "Evaluation and diagnosis of blepharitis to determine appropriate treatment options."
        when "Eyelid Hygiene"
          "Educational guidance on proper eyelid cleaning techniques to manage blepharitis."
        when "Warm Compress Therapy"
          "Application of warm compresses to relieve symptoms and improve eyelid comfort."
        when "Prescription Eyelid Cleanser"
          "Use of medicated eyelid cleansers to control bacteria and inflammation associated with blepharitis."
        when "Macular Hole Evaluation"
          "Detailed examination to diagnose macular holes and assess retinal structure."
        when "Vitrectomy"
          "Surgical procedure to remove vitreous gel and repair macular holes for improved vision."
        when "Intraocular Gas Injection"
          "Use of gas bubbles to seal macular holes and promote healing after vitrectomy."
        when "Post-op Macular Care"
          "Care and monitoring after vitrectomy to ensure proper healing and visual recovery."
        when "CNV Diagnosis"
          "Diagnostic tests to identify choroidal neovascularization and assess its impact on vision."
        when "Anti-VEGF Therapy"
          "Intravitreal injections of anti-VEGF medications to reduce abnormal blood vessel growth."
        when "Photodynamic Therapy"
          "Treatment involving laser light and a light-sensitive medication to treat CNV."
        when "Retinal Angiography"
          "Diagnostic imaging to evaluate blood flow and detect abnormalities in the retina."
        when "Presbyopia Evaluation"
          "Assessment to diagnose presbyopia and determine appropriate vision correction options."
        when "Reading Glasses"
          "Prescription eyewear designed to improve near vision and alleviate presbyopia symptoms."
        when "Multifocal Contact Lenses"
          "Contact lenses with multiple focal points to correct vision at varying distances."
        when "PresbyLASIK"
          "LASIK surgery customized to correct both near and distance vision for presbyopia."
        when "Color Vision Test"
          "Diagnostic testing to assess color vision deficiencies and identify specific color perception issues."
        when "Color Blind Glasses"
          "Specialized eyewear designed to enhance color perception and improve color vision."
        when "Color Vision Correction"
          "Therapeutic strategies to address and manage color vision deficiencies."
        when "EnChroma Lenses"
          "EnChroma glasses designed to enhance color vision and provide better color discrimination."
        when "Retinoblastoma Screening"
          "Screening tests and evaluations to detect retinoblastoma in its early stages."
        when "Eye Cancer Treatment"
          "Comprehensive treatment options to manage retinoblastoma and preserve vision."
        when "Chemotherapy"
          "Systemic treatment with anticancer drugs to destroy retinoblastoma cells."
        when "Radiation Therapy"
          "Localized treatment with high-energy rays to target and eliminate retinoblastoma tumors."
        when "Myopia Control Consultation"
          "Consultation to assess myopia progression and determine appropriate treatment options."
        when "Orthokeratology"
          "Non-surgical treatment involving special contact lenses to reshape the cornea and correct myopia."
        when "MiSight Contact Lenses"
          "Daily disposable contact lenses designed to slow myopia progression in children."
        when "Atropine Eye Drops"
          "Prescription eye drops to control myopia progression by temporarily relaxing the eye's focusing mechanism."
        else
          "General Eye Care Service"
        end
      end
    end
  end
end
