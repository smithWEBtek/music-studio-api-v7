DATA_teachers = {
  :teacher_keys =>
    ["firstname", "lastname", "email"],
  :teachers => [
  ['None', 'None', 'none@music.com'],
  ['John', 'Coltrane', 'trane@music.com' ],
  ['Art', 'Tatum', 'artful@music.com'],
  ['Jimi', 'Hendrix', 'jimi@music.com'],
  ['James', 'Brown', 'jb@getfunky1.com'],
  ['Sonny', 'Stitt', 'sonny@swing.com'],
  ['Lester', 'Parker', 'lester@swing.com'],
  ['Charlie', 'Banacos', 'cb@swing.com']
  ]
}

def make_teachers
  DATA_teachers[:teachers].each do |teacher|
    new_teacher = Teacher.new
    teacher.each_with_index do |attribute, i|
      new_teacher.send(DATA_teachers[:teacher_keys][i]+"=", attribute)
    end
    new_teacher.save
  end
end
  
DATA_students = {
  :student_keys =>
    ["level", "teacher_id", "firstname", "lastname", "email"],
  :students => [
    [1, 1, 'None', 'None', 'none@music.com'],
    [1, 6, 'James', 'Smith', 'jsmith@student.com'],
    [2, 5, 'Peter', 'Granger', 'pgranger@student.com'],
    [2, 3, 'Teddy', 'Mullet', 'tmullet@student.com'],
    [2, 2, 'Francis', 'Callucci', 'fcallucci@student.com'],
    [3, 2, 'Brian', 'Nadeau', 'bnadeau@student.com'],
    [1, 3, 'Sue', 'Morrow', 'smorrow@student.com'],
    [1, 3, 'Andrea', 'McPhail', 'amcphail@student.com'],
    [3, 4, 'Orin', 'Franklin', 'okeepnews@student.com'],
    [3, 4, 'Will', 'Marron', 'wmarron@student.com'],
    [1, 5, 'Penny', 'Clooney', 'pclump@student.com'],
    [1, 5, 'Babu', 'Aadouz', 'babadoo@student.com']
  ]
}

def make_students
  DATA_students[:students].each do |student|
    new_student = Student.new
    student.each_with_index do |attribute, i|
      new_student.send(DATA_students[:student_keys][i]+"=", attribute)
    end
    new_student.save
  end
end

DATA_lessons = {
  :lesson_keys =>
    ["date", "notes", "teacher_id", "student_id"],
  :lessons => [
    ['2017-10-01', 'discuss Beethoven', 3, 7],
    ['2017-10-08', 'review Bach pieces', 4, 8],
    ['2017-10-15', 'move to new book on technique', 5, 1],
    ['2017-10-21', 'practice on slow deliberate playing', 6, 1],
    ['2017-10-07', 'practice techniques and plans', 4, 2],
    ['2017-10-14', 'meet with parents about new piano', 5, 3],
    ['2017-10-21', 'initial meeting', 2, 4],
    ['2017-10-31', 'review new book', 2, 5],
    ['2017-10-01', 'initial meeting, both parents attending', 2, 6],
    ['2017-10-01', 'complete questionaire', 3, 7],
    ['2017-10-01', 'plan out summer practice', 3, 8],
    ['2017-10-01', 'final prep before recital', 3, 9],
    ['2017-11-01', 'proposing, learn to play her song', 3, 4],
    ['2017-12-01', 'final prep before recital', 3, 5],
    ['2018-01-05', 'final prep before recital', 4, 6],
    ['2018-01-12', 'find favorite tunes', 5, 2],
    ['2018-01-06', 'learn Grandmothers favorite song', 3, 3],
    ['2018-01-04', 'final prep before recital', 3, 9],
    ['2018-01-02', 'practic slower',	2, 	7	],
    ['2018-01-04', 'go watch some live music',	5, 	5	],
    ['2018-01-06', 'go watch some live music',	3, 	9	],
    ['2018-01-09', 'study hard',	2, 	7	],
    ['2018-01-03', 'go watch some live music',	4, 	6	],
    ['2018-01-02', 'have shorter sessions, but daily',	3, 	2	],
    ['2018-01-02', 'have shorter sessions, but daily',	4, 	2	],
    ['2018-01-02', 'have shorter sessions, but daily',	5, 	7	],
    ['2018-01-02', 'go watch some live music',	4, 	6	],
    ['2018-01-02', 'study hard',	3, 	9	],
    ['2018-01-02', 'study hard',	4, 	4	],
    ['2018-01-07' , 'practic slower',	3, 	7	],
    ['2018-01-02', 'go watch some live music',	3, 	5	],
    ['2018-01-06', 'have shorter sessions, but daily',	1, 	5	],
    ['2018-01-15', 'go watch some live music',	2, 	5	],
    ['2018-01-12', 'review Beethoven left hand',	4, 	8	],
    ['2018-01-02', 'review Beethoven left hand',	3, 	7	],
    ['2018-01-03', 'review Beethoven left hand',	2, 	6	],
    ['2018-01-02', 'study hard',	4, 	9	],
    ['2018-01-02', 'study hard',	3, 	9	]
  ]
}

def make_lessons
  DATA_lessons[:lessons].each do |lesson|
    new_lesson = Lesson.new
    lesson.each_with_index do |attribute, i|
      new_lesson.send(DATA_lessons[:lesson_keys][i]+"=", attribute)
    end
    new_lesson.save
  end
end

DATA_resources = {
  :resource_keys =>
    ["title", "category", "description", "format", "location", "url"],
  :resources => [
    ["El Manisero", "Salsa", "salsa chart", "pdf", "cloud", "https://res.cloudinary.com/smithwebtek/image/upload/v1509296858/charts/El_Manisero.pdf"],
    ["Frenesi", "Salsa", "salsa chart", "pdf", "cloud","https://res.cloudinary.com/smithwebtek/image/upload/v1509296858/charts/Frenesi.pdf"],
    ["El Cuarto de Tula", "Salsa", "salsa chart", "pdf", "cloud","https://res.cloudinary.com/smithwebtek/image/upload/v1509296858/charts/El_Cuarto_de_Tula.pdf"],
    ["Capullito De Aleli", "Salsa", "salsa chart", "pdf", "cloud","https://res.cloudinary.com/smithwebtek/image/upload/v1509296858/charts/Capullito_De_Aleli.pdf"],
    ["El Cantante", "Salsa", "salsa chart", "pdf", "cloud","https://res.cloudinary.com/smithwebtek/image/upload/v1509296858/charts/El_Cantante-leadSheet.pdf"],
    ["Guantanamera", "Salsa", "salsa chart", "pdf", "cloud","https://res.cloudinary.com/smithwebtek/image/upload/v1509296858/charts/Guantanamera.pdf"],
    ["Chan Chan", "Salsa", "salsa chart", "pdf", "cloud","https://res.cloudinary.com/smithwebtek/image/upload/v1509296857/charts/Chan_Chan_-_lead_sheet.pdf"],
    ["Chucho", "Salsa", "salsa chart", "pdf", "cloud","https://res.cloudinary.com/smithwebtek/image/upload/v1509296857/charts/Chucho.pdf"],
    ["Castellano Que Bueno Baila Usted", "Salsa", "salsa chart", "pdf", "cloud","https://res.cloudinary.com/smithwebtek/image/upload/v1509296857/charts/Castellano_Que_Bueno_Baila_Usted.pdf"],
    ["A Night In Tunisia", "Salsa", "salsa chart", "pdf","cloud",
    "https://res.cloudinary.com/smithwebtek/image/upload/v1509296857/charts/A_Night_In_Tunisia.pdf"],
    ['cycle of fifths 1', 'harmony', '12 keys in 12 bars', 'doc', 'cloud', 'no_url_given'],
    ['blues in F', 'blues', '12 bar blues', 'doc', 'cloud', 'no_url_given'],
    ['II-V-I 4bar', 'improv', '4 bar phrases', 'aud', 'cloud', 'no_url_given'],
    ['maj triad', 'chords', 'major triad inversions', 'doc', 'cloud', 'no_url_given'],
    ['min triad', 'chords', 'minor triad inversions', 'doc', 'cloud', 'no_url_given'],
    ['major scales', 'scales', 'major scales', 'aud', 'cloud', 'no_url_given'],
    ['approach notes', 'improv', 'approach notes', 'doc', 'cloud', 'no_url_given'],
    ['bi chords', 'improv', 'bi chords', 'doc', 'cloud', 'no_url_given'],
    ['Autumn Leaves', 'tune', 'standard', 'doc', 'cloud', 'no_url_given'],
    ['Blue Bossa', 'tune', 'standard', 'doc', 'cloud', 'no_url_given'],
    ['All The Things', 'tune', 'standard', 'doc', 'cloud', 'no_url_given'],
    ['I Got Rhythm', 'tune', 'standard', 'doc', 'cloud', 'no_url_given'],
    ["Vereno audio", "salsa", "exercise salsa montuno", "aud", "soundcloud", "383625701"],
    ["Misty-salsa", "latin jazz", "latin jazz trio", "aud", "soundcloud", "253001471"],
    ["Ven Morena Montuno", "Salsa", "basic piano montuno", "vid", "youtube", "https://www.youtube.com/embed/JntdJkawVF4?rel=0"],
    ["Montuno Lesson 1", "Salsa", "basic piano montuno", "vid", "youtube", "https://www.youtube.com/embed/CVX7-eZReqs?rel=0"],
    ["Salsa 1", "Salsa", "basic piano montuno", "vid", "youtube", "https://www.youtube.com/embed/-2mu-Hrr838"],
    ['Bill Evans - Universal Mind', 'documentary', 'philosophy of music', 'vid', 'youtube', 'https://www.youtube.com/embed/QwXAqIaUahI?rel=0'],
    ['Gary Burton - Improvisation', 'master class', 'philosophy of improv', 'vid', 'youtube', 'https://www.youtube.com/embed/t2txO_u2eNg?rel=0'],
    ['Kenny Werner - Effortless Mastery', 'master class', 'psychology of playing', 'vid', 'youtube', 'https://www.youtube.com/embed/CBnYgcmSJG8?rel=0'],
    ['Kurt Elling - Role of Band Leader', 'master class', 'leading a gig', 'vid', 'youtube', 'https://www.youtube.com/embed/stbmhcSLXXw?rel=0']
  ]
}

def make_resources
  DATA_resources[:resources].each do |resource|
    new_resource = Resource.new
    resource.each_with_index do |attribute, i|
      new_resource.send(DATA_resources[:resource_keys][i]+"=", attribute)
    end
    new_resource.save
  end
end

DATA_lesson_resources = {
  :lesson_resource_keys =>
    ["lesson_id", "resource_id"],
  :lesson_resources => [
    [1, 1],
    [1, 2],
    [1, 3],
    [2, 1],
    [2, 2],
    [2, 3],
    [3, 4],
    [3, 2],
    [3, 1],
    [4, 3],
    [4, 4],
    [4, 5],
    [4, 6],
    [5, 3],
    [5, 2],
    [5, 4],
    [6, 2],
    [7, 3],
    [6, 6],
    [7, 4],
    [8, 3]
  ]
}

def make_lesson_resources
  DATA_lesson_resources[:lesson_resources].each do |lesson_resource|
    new_lesson_resource = LessonResource.new
    lesson_resource.each_with_index do |attribute, i|
      new_lesson_resource.send(DATA_lesson_resources[:lesson_resource_keys][i]+"=", attribute)
    end
    new_lesson_resource.save
  end
end
 
def main 
  make_teachers
  make_students
  make_lessons
  make_resources
  make_lesson_resources
end

main