Rails.application.routes.draw do
  resources :teachers do
    resources :teacher_subjects, shallow: true
  end

  resources :sections do
    resources :section_times, shallow: true
  end

  resources :subjects
  resources :classrooms
  root to: 'subjects#index'

  namespace 'students' do
    root to: 'homepage#index'
    put '/section/:id/enroll', to: 'sections#enroll', as: 'enroll'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
