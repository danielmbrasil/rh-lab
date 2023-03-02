# frozen_string_literal: true

# Employee
Employee.create(
  [
    {
      name: Faker::Name.name
    },
    {
      name: Faker::Name.name
    },
    {
      name: Faker::Name.name
    }
  ]
)

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

# Employment
Employment.create(
  [
    {
      salary: rand(0..5_000),
      registration: rand(1..1_000).to_s,
      starts_on: 6.months.ago,
      reason: :hire,
      department: Department.last,
      employee: Employee.second,
      position: Position.create(name: Faker::Job.position)
    },
    {
      salary: rand(0..1_000),
      registration: rand(1..1_000).to_s,
      starts_on: Time.zone.today,
      department: Department.last,
      employee: Employee.last,
      position: Position.create(name: Faker::Job.position)
    }
  ]
)

# Assignment
Assignment.create(
  [
    {
      employee: Employee.second,
      project: Project.first,
      starts_on: 6.months.ago,
      ends_on: 5.months.ago
    },
    {
      employee: Employee.second,
      project: Project.second,
      starts_on: 4.months.ago
    },
    {
      employee: Employee.last,
      project: Project.last,
      starts_on: Time.zone.tomorrow
    }
  ]
)
