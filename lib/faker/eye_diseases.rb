# lib/faker/eye_diseases.rb

require 'faker'

module Faker
  class EyeDiseases < Base
    class << self
      def disease_name
        [
          "Cataracts",
          "Glaucoma",
          "Macular Degeneration",
          "Diabetic Retinopathy",
          "Retinal Detachment",
          "Conjunctivitis (Pink Eye)",
          "Dry Eye Syndrome",
          "Strabismus",
          "Retinitis Pigmentosa",
          "Amblyopia (Lazy Eye)",
          "Keratoconus",
          "Uveitis",
          "Ptosis",
          "Blepharitis",
          "Macular Hole",
          "Choroidal Neovascularization",
          "Presbyopia",
          "Color Blindness (Color Vision Deficiency)",
          "Retinoblastoma",
          "Myopia (Nearsightedness)"
        ].sample
      end

      def disease_symptoms(disease_name)
        case disease_name
        when "Cataracts"
          "Clouded or blurry vision, sensitivity to glare, fading colors."
        when "Glaucoma"
          "Gradual loss of peripheral vision, tunnel vision in advanced stages, eye pain."
        when "Macular Degeneration"
          "Blurry or distorted central vision, difficulty reading or recognizing faces."
        when "Diabetic Retinopathy"
          "Spots or floaters, blurred vision, fluctuating vision, impaired color vision."
        when "Retinal Detachment"
          "Sudden onset of floaters, flashes of light, curtain-like shadow over vision."
        when "Conjunctivitis (Pink Eye)"
          "Red or pink eye, itching or burning sensation, watery or thick yellow discharge."
        when "Dry Eye Syndrome"
          "Stinging or burning sensation, redness, stringy mucus in or around the eyes."
        when "Strabismus"
          "Crossed eyes, eyes that don't align, double vision, squinting."
        when "Retinitis Pigmentosa"
          "Night blindness, tunnel vision, difficulty seeing colors, progressive vision loss."
        when "Amblyopia (Lazy Eye)"
          "Reduced vision in one eye, poor depth perception, eyes that do not move together."
        when "Keratoconus"
          "Blurred or distorted vision, increased sensitivity to light, sudden worsening of vision."
        when "Uveitis"
          "Eye redness, pain, sensitivity to light, blurred vision."
        when "Ptosis"
          "Drooping of the upper eyelid, difficulty keeping the eye open, eyebrow strain."
        when "Blepharitis"
          "Red and swollen eyelids, itching or burning sensation, greasy eyelids."
        when "Macular Hole"
          "Blurry or distorted central vision, difficulty reading or seeing fine detail."
        when "Choroidal Neovascularization"
          "Sudden loss or distortion of central vision, straight lines appearing wavy."
        when "Presbyopia"
          "Difficulty focusing on near objects, blurred vision at normal reading distance."
        when "Color Blindness (Color Vision Deficiency)"
          "Difficulty distinguishing between certain colors, vision may be less vibrant."
        when "Retinoblastoma"
          "White color in the center circle of the eye, crossed eyes, poor vision."
        when "Myopia (Nearsightedness)"
          "Blurred vision when looking at distant objects, squinting, headaches."
        else
          "General symptoms description."
        end
      end

      def disease_treatment(disease_name)
        case disease_name
        when "Cataracts"
          "Surgical removal of the cloudy lens and replacement with an artificial lens."
        when "Glaucoma"
          "Eye drops, oral medications, laser treatment, surgery to lower intraocular pressure."
        when "Macular Degeneration"
          "Nutritional supplements, anti-VEGF injections, laser therapy in some cases."
        when "Diabetic Retinopathy"
          "Control of blood sugar levels, laser treatment, anti-VEGF injections, surgery."
        when "Retinal Detachment"
          "Surgical reattachment of the retina using laser or cryotherapy."
        when "Conjunctivitis (Pink Eye)"
          "Antibiotic eye drops or ointments for bacterial conjunctivitis, antihistamines for allergic conjunctivitis."
        when "Dry Eye Syndrome"
          "Artificial tears, prescription eye drops, punctal plugs, lifestyle changes."
        when "Strabismus"
          "Eyeglasses or contact lenses, eye exercises, surgery in some cases."
        when "Retinitis Pigmentosa"
          "Vision aids, low vision rehabilitation, gene therapy in clinical trials."
        when "Amblyopia (Lazy Eye)"
          "Eye patching, vision therapy, corrective eyewear."
        when "Keratoconus"
          "Eyeglasses or soft contact lenses, rigid gas permeable contact lenses, cross-linking surgery in severe cases."
        when "Uveitis"
          "Corticosteroid eye drops, oral medications, immunosuppressive drugs, surgery in some cases."
        when "Ptosis"
          "Surgery to repair the levator muscle or attach the eyelid higher on the eye."
        when "Blepharitis"
          "Warm compresses, eyelid scrubs, antibiotic ointments, lifestyle changes."
        when "Macular Hole"
          "Vitrectomy surgery, gas bubble insertion, face-down positioning after surgery."
        when "Choroidal Neovascularization"
          "Anti-VEGF injections, photodynamic therapy, laser therapy."
        when "Presbyopia"
          "Reading glasses, progressive lenses, bifocal or multifocal contact lenses, presbyLASIK."
        when "Color Blindness (Color Vision Deficiency)"
          "No cure, but corrective lenses such as EnChroma glasses may enhance color perception."
        when "Retinoblastoma"
          "Chemotherapy, radiation therapy, laser therapy, cryotherapy, surgery."
        when "Myopia (Nearsightedness)"
          "Eyeglasses, contact lenses, orthokeratology, refractive surgery."
        else
          "General treatment description."
        end
      end

      def disease_prevalence
        Faker::Number.between(from: 1, to: 100)
      end

      def disease_description(disease_name)
        "Description for #{disease_name}."
      end
    end
  end
end
