class NotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @note = Note.new
    @notes = Note.where(user_id: current_user.id).order("created_at DESC")
  end
  def create
    note = Note.new(note_params)
    if note.save
      render json:{ note: note }
    else
      redirect_to notes_index_path
    end
  end
  def edit
    @note = Note.find(params[:id])
  end
  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    if @note.save
      redirect_to notes_index_path
    else
      render :edit
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_index_path
  end

  def checked
    note = Note..where(user_id: current_user.id)
    render json: { post: note }
  end
end


private

  def note_params
    params.require(:note).permit(:fact, :memomemo, :tyusyo, :tennyou).merge(user_id: current_user.id)
  end