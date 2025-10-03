class VideoTranscriptionsController < ApplicationController
  before_action :set_video_transcription, only: %i[ show edit update destroy ]

  # GET /video_transcriptions or /video_transcriptions.json
  def index
    @video_transcriptions = VideoTranscription.all
  end

  # GET /video_transcriptions/1 or /video_transcriptions/1.json
  def show
  end

  # GET /video_transcriptions/new
  def new
    @video_transcription = VideoTranscription.new
  end

  # GET /video_transcriptions/1/edit
  def edit
  end

  # POST /video_transcriptions or /video_transcriptions.json
  def create
    @video_transcription = VideoTranscription.new(video_transcription_params)

    respond_to do |format|
      if @video_transcription.save
        format.html { redirect_to @video_transcription, notice: "Video transcription was successfully created." }
        format.json { render :show, status: :created, location: @video_transcription }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @video_transcription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_transcriptions/1 or /video_transcriptions/1.json
  def update
    respond_to do |format|
      if @video_transcription.update(video_transcription_params)
        format.html { redirect_to @video_transcription, notice: "Video transcription was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @video_transcription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @video_transcription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_transcriptions/1 or /video_transcriptions/1.json
  def destroy
    @video_transcription.destroy!

    respond_to do |format|
      format.html { redirect_to video_transcriptions_path, notice: "Video transcription was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_transcription
      @video_transcription = VideoTranscription.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def video_transcription_params
      params.expect(video_transcription: [ :video_id, :transcription_file, :language, :model, :output_format, :transcription_output_type, :transcription_text, :transcription_json ])
    end
end
