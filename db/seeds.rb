Bill.create!([
  {client_id: 1, person_id: 1, description: "F1", total: 100.0, issue_date: "2016-02-06"},
  {client_id: 1, person_id: 2, description: "F2", total: 101.0, issue_date: "2016-02-06"},
  {client_id: 1, person_id: 3, description: "F3", total: 102.0, issue_date: "2016-02-06"},
  {client_id: 1, person_id: 4, description: "F4", total: 104.0, issue_date: "2016-02-06"},
  {client_id: 1, person_id: 5, description: "F5", total: 105.0, issue_date: "2016-02-06"},
  {client_id: 1, person_id: 6, description: "F6", total: 1.0, issue_date: "2016-02-06"},
  {client_id: 1, person_id: 6, description: "F7", total: 2.0, issue_date: "2016-02-06"},
  {client_id: 1, person_id: 3, description: "F8", total: 40.0, issue_date: "2016-02-06"}
])
Client.create!([
  {name: "Mario", surname: "Bross", birthdate: "1991-02-06", gender: "Masculino", du: 23886649, cui: "3-23886649-1"}
])
Contact.create!([
  {client_id: 1, kind: "WPP", info: "1"}
])
Person.create!([
  {name: "p1", cui: 1},
  {name: "p2", cui: 2},
  {name: "p3", cui: 3},
  {name: "p4", cui: 4},
  {name: "p5", cui: 5},
  {name: "p6", cui: 6}
])
