# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Person do

  it "should know how to create a person with right params" do
    params = 
    {
      utf8: "✓",
      authenticity_token: "yT8tSzAWRW2G+QrWgue1Wz/FwPQoUrtDa6cwN5jABa0=",
      person: 
      {
        name: "fgefgefg",
        phone: "3243432",
        address: "dgsfhdsh",
        profile: 
        {
          email: "lucasbibiano@outlook.com",
          password: "[FILTERED]",
          password_confirmation: "[FILTERED]"
        }
      },
      commit: "Enviar"
    }

    person = Person.create(params, true)

    person.errors.empty?.should be true
  end

  it "should not create a person with wrong params" do
    params = 
    {
      utf8: "✓",
      authenticity_token: "yT8tSzAWRW2G+QrWgue1Wz/FwPQoUrtDa6cwN5jABa0=",
      person: 
      {
        name: "",
        phone: "",
        address: "",
        profile: 
        {
          email: "lucasbibiano@outlook.com",
          password: "[FILTERED]",
          password_confirmation: "[FILTERED]"
        }
      },
      commit: "Enviar"
    }

    expect { Person.create(params, true) }.to raise_error
  end

end
