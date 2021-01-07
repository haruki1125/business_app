class NotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @note = Note.new
    @notes = Note.where(user_id: current_user.id)
  end
  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_index_path
    else
      render :new
    end
  end
  def edit
    @note = Note.find(params[:id])
  end
end


private

  def note_params
    params.require(:note).permit(:fact, :meno, :tyusyo, :tennyou).merge(user_id: current_user.id)
  end