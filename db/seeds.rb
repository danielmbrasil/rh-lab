# frozen_string_literal: true

# Employee
20.times { Employee.create(name: Faker::Name.name) }

# Department
Department.create(
  [
    {
      name: Faker::Lorem.sentence(word_count: 3),
      manager: Employee.first
    },
    {
      name: Faker::Lorem.sentence(word_count: 3),
      manager: Employee.first
    },
    {
      name: Faker::Lorem.sentence(word_count: 3),
      manager: Employee.last
    }
  ]
)

# Project
Project.create(
  [
    {
      name: Faker::Lorem.sentence(word_count: 5),
      starts_on: 6.months.ago
    },
    {
      name: Faker::Lorem.sentence(word_count: 5),
      starts_on: Time.zone.today,
      ends_on: Time.zone.today + 6.months
    },
    {
      name: Faker::Lorem.sentence(word_count: 5),
      starts_on: Time.zone.today,
      ends_on: Time.zone.today + 6.months,
      budget: rand(0..5000),
      spent: rand(0..5000)
    }
  ]
)

# Position
3.times { Position.create(name: Faker::Job.position) }

# Assignment
(2..5).each do |id|
  Assignment.create(
    starts_on: Time.zone.today,
    employee: Employee.find(id),
    project: Project.first
  )
end

(5..10).each do |id|
  Assignment.create(
    starts_on: Time.zone.today,
    employee: Employee.find(id),
    project: Project.last
  )
end

# Employment
Employment.create(
  [
    {
      salary: rand(0..10_000),
      registration: Faker::Job.employment_type,
      starts_on: 2.years.ago,
      reason: :hire,
      department: Department.first,
      employee: Employee.first,
      position: Position.create(name: 'Manager')
    },
    {
      salary: rand(0..15_000),
      registration: Faker::Job.employment_type,
      starts_on: 6.months.ago,
      reason: :promote,
      department: Department.last,
      employee: Employee.last,
      position: Position.create(name: 'Manager')
    },
    {
      salary: rand(0..5_000),
      registration: Faker::Job.employment_type,
      starts_on: 6.months.ago,
      ends_on: Time.zone.today,
      reason: :hire,
      department: Department.last,
      employee: Employee.find(15),
      position: Position.create(name: Faker::Job.position)
    }
  ]
)
