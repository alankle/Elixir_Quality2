defmodule Quality2.SurveyController do
  use Quality2.Web, :controller

  alias Quality2.{Survey, Subtheme}

  defp init_subthemes(changeset) do
      subthemes01 = [
          %Subtheme{title: "Toutes les activités à réaliser sont identifiées.", note: 0},
          %Subtheme{title: "Toutes les activités à réaliser sont identifiées par écrit.", note: 0},
          %Subtheme{title: "Elles sont planifiées.", note: 0},
          %Subtheme{title: "Elles sont validées par le responsable.", note: 0} 
        ]
        subthemes02 = [
         %Subtheme{title: "Les sources de dangers sont connues.", note: 0},
          %Subtheme{title: "Les sources de dangers sont identifiées par écrits.", note: 0},
          %Subtheme{title: "Les mesures à prendre sont clairement définies.", note: 0},
          %Subtheme{title: "Les mesures à prendre sont identifiées par écrit.", note: 0} 
        ]
        subthemes03 = [
         %Subtheme{title: "Les documents utilisés correspondent à la réalité.", note: 0},
         %Subtheme{title: "Les documents sont datés et signés.", note: 0}       
        ]
        subthemes04 = [
          %Subtheme{title: "Les ressources nécessaires à la bonne réalisation des tâches sont à disposition.", note: 0},
          %Subtheme{title: "Elles sont adéquates.", note: 0},
          %Subtheme{title: "Le matériel est en bon état de fonctionnement", note: 0},
          %Subtheme{title: "Il ne présente aucun risque.", note: 0},
          %Subtheme{title: "Les documents de tavail sont disponibles.", note: 0} 
        ]
        subthemes05 = [
          %Subtheme{title: "Le personnel a la formation et/ou les compétences requises.", note: 0},
          %Subtheme{title: "En cas de besoin, une formation (interne/externe) est planifiée.", note: 0},
          %Subtheme{title: "Le personnel connaît les mesures pour éviter les risques.", note: 0},
          %Subtheme{title: "Le personnel connaît les mesures d'urgences.", note: 0} 
        ]
        subthemes06 = [
          %Subtheme{title: "Les documents sont utilisés et remplis intégralement et correctement.", note: 0},
          %Subtheme{title: "Les instructions sont suivies.", note: 0}        
        ]
        subthemes07 = [
         %Subtheme{title: "Le personnel a contrôlé la conformité des activités réalisées.", note: 0},
          %Subtheme{title: "Les résultats ont été transmis au responsable.", note: 0},
          %Subtheme{title: "Le responsable a supervisé les activités réalisée par ses collaborateurs.", note: 0}        
        ]
        subthemes08 = [
         %Subtheme{title: "Les résultats correspondent à ce que demande et attend le client (preuves).", note: 0},
          %Subtheme{title: "Les indicateurs sont conformes (preuves).", note: 0}        
        ]
        subthemes09 = [
         %Subtheme{title: "Il y a eu des anomalies ou dysfonctionnements mineurs.", note: 0},
          %Subtheme{title: "Il y a eu des anomalies ou dysfonctionnements importants.", note: 0},
          %Subtheme{title: "Il y a eu des réclamations verbales par le client (également vérifier chez client).", note: 0},
          %Subtheme{title: "Il y a eu des réclamations écrites par le client (également vérifier chez client).", note: 0}
        ]
        subthemes10 = [
          %Subtheme{title: "Importance de l'écart entre ce qui est demandé et ce qui est offert? .", note: 0}        
        ]
        subthemes11 = [
          %Subtheme{title: "Importance de l'écart entre ce qui est demandé et ce qui est offert? ", note: 0}        
        ]
        subthemes12 = [
         %Subtheme{title: "Les anomalies ou dysfonctionnements sont documentés.", note: 0},
          %Subtheme{title: "Les anomalies ou dysfonctionnements sont communiquées aux personnes concernées.", note: 0},
          %Subtheme{title: "La cause de chaque anomalie ou dysfonctionnement a été analysée. ", note: 0},
          %Subtheme{title: "La cause de chaque anomalie ou dysfonctionnement est connue. ", note: 0},
          %Subtheme{title: "L'analyse est documentée.", note: 0},
          %Subtheme{title: "Une décision sur la mise en place ou non de mesures a été prise.", note: 0},
          %Subtheme{title: "La décision sur la mise en place ou non de mesures est documentée.", note: 0},
          %Subtheme{title: "Les mesures décidées ont été mise en place. ", note: 0},
        ]
        subthemes13 = [
         %Subtheme{title: "Les causes d'anomalies ou dysfonctionnements ont été éliminés ou sont sous maîtrise (preuves).", note: 0},
          %Subtheme{title: "L'éfficacité des mesures prises a été vérifiée (preuve).", note: 0},
          %Subtheme{title: "L'éfficacité des mesures prises est considérée bonne (preuve).", note: 0},
          %Subtheme{title: "La personne concernée a été informé des mesures prises (preuve).", note: 0},
          %Subtheme{title: "La personne concernée a approuvée les mesures prises (preuve).", note: 0}
        ]
        subthemes14 = [
        %Subtheme{title: "Les situations problématiques ne devraient plus apparaître .", note: 0},
          %Subtheme{title: "Il n'y a pas de risques pouvant provoquer des conséquences nuisibles.", note: 0}        
        ]

        changeset  
          |> Ecto.Changeset.change             
          |> Ecto.Changeset.put_embed(:subthemes01, subthemes01)
          |> Ecto.Changeset.put_embed(:subthemes02, subthemes02)
          |> Ecto.Changeset.put_embed(:subthemes03, subthemes03)
          |> Ecto.Changeset.put_embed(:subthemes04, subthemes04)
          |> Ecto.Changeset.put_embed(:subthemes05, subthemes05)
          |> Ecto.Changeset.put_embed(:subthemes06, subthemes06)
          |> Ecto.Changeset.put_embed(:subthemes07, subthemes07)
          |> Ecto.Changeset.put_embed(:subthemes08, subthemes08)
          |> Ecto.Changeset.put_embed(:subthemes09, subthemes09)
          |> Ecto.Changeset.put_embed(:subthemes10, subthemes10)
          |> Ecto.Changeset.put_embed(:subthemes11, subthemes11)
          |> Ecto.Changeset.put_embed(:subthemes12, subthemes12)
          |> Ecto.Changeset.put_embed(:subthemes13, subthemes13)
          |> Ecto.Changeset.put_embed(:subthemes14, subthemes14)
  end

  defp div_float(x ,y) when  x > 0 and y > 0 do
    x / y
  end

  defp div_float(_,_),  do:  1


  defp average_note(subthemes) do
        note = []
        note = for subtheme <- subthemes do
                 note ++ subtheme.note
               end
        note_len = length(note)

        Enum.reduce(note, 0 ,fn x, acc -> x + acc end)
        |> div_float note_len
  end

  def index(conn, _params) do
    surveys = Repo.all(Survey)
    render(conn, "index.html", surveys: surveys)
  end

  def new(conn, _params) do
    
    changeset =  Survey.changeset(%Survey{})
              |> init_subthemes            

    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"survey" => survey_params}) do
    changeset = Survey.changeset(%Survey{}, survey_params)

    case Repo.insert(changeset) do
      {:ok, _survey} ->
        conn
        |> put_flash(:info, "Survey created successfully.")
        |> redirect(to: survey_path(conn, :index))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    survey = Repo.get!(Survey, id)      

    subthemes_average = %{sb01: average_note(survey.subthemes01),
                          sb02: average_note(survey.subthemes02),
                          sb03: average_note(survey.subthemes03),
                          sb04: average_note(survey.subthemes04),
                          sb05: average_note(survey.subthemes05),
                          sb06: average_note(survey.subthemes06),
                          sb07: average_note(survey.subthemes07),
                          sb08: average_note(survey.subthemes08),
                          sb09: average_note(survey.subthemes09),
                          sb10: average_note(survey.subthemes10),
                          sb11: average_note(survey.subthemes11),
                          sb12: average_note(survey.subthemes12),
                          sb13: average_note(survey.subthemes13),
                          sb14: average_note(survey.subthemes14)
                         }


    themes_average = %{t01: (subthemes_average.sb01 + subthemes_average.sb02+ subthemes_average.sb03)/3,
                       t02: (subthemes_average.sb04 + subthemes_average.sb05+ subthemes_average.sb06)/3,
                       t03: (subthemes_average.sb07 + subthemes_average.sb08+ subthemes_average.sb09 + subthemes_average.sb10 + subthemes_average.sb11)/5,
                       t04: (subthemes_average.sb12 + subthemes_average.sb13+ subthemes_average.sb14)/3
                      }
    total_average  = (themes_average.t01 + themes_average.t02 + themes_average.t04 + themes_average.t04)/4


    render(conn, "show.html", survey: survey, subthemes_average: subthemes_average, themes_average: themes_average, total_average: total_average)
  end

  def edit(conn, %{"id" => id}) do
    survey = Repo.get!(Survey, id)
    changeset = Survey.changeset(survey)
    render(conn, "edit.html", survey: survey, changeset: changeset)
  end

  def update(conn, %{"id" => id, "survey" => survey_params}) do
    survey = Repo.get!(Survey, id)
    changeset = Survey.changeset(survey, survey_params)

    case Repo.update(changeset) do
      {:ok, survey} ->
        conn
        |> put_flash(:info, "Survey updated successfully.")
        |> redirect(to: survey_path(conn, :show, survey))
      {:error, changeset} ->
        render(conn, "edit.html", survey: survey, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    survey = Repo.get!(Survey, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(survey)

    conn
    |> put_flash(:info, "Survey deleted successfully.")
    |> redirect(to: survey_path(conn, :index))
  end
end
