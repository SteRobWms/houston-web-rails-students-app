Instructor.destroy_all
Student.destroy_all

i1 = Instructor.create(name: "Vidhi")
i2 = Instructor.create(name: "Josh")
i3 = Instructor.create(name: "Brian")

Student.create(name: "Stephen", major: "SE", age: 32, instructor_id: i1.id)
Student.create(name: "Blake", major: "SE", age: 20, instructor_id: i1.id)
Student.create(name: "Nathan", major: "SE", age: 22, instructor_id: i2.id)
Student.create(name: "Mubarak", major: "SE", age: 23, instructor_id: i2.id)
Student.create(name: "Placido", major: "SE", age: 25, instructor_id: i1.id)
Student.create(name: "Boi", major: "DS", age: 25, instructor_id: i3.id)
Student.create(name: "Dylan", major: "DS", age: 23, instructor_id: i3.id)