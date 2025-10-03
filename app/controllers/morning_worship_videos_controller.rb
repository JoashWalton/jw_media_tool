class MorningWorshipVideosController < ApplicationController
  before_action :set_morning_worship_video, only: %i[ show edit update destroy ]

  # GET /morning_worship_videos or /morning_worship_videos.json
  def index
    @morning_worship_videos = MorningWorshipVideo.all
  end

  # GET /morning_worship_videos/1 or /morning_worship_videos/1.json
  def show
  end

  # GET /morning_worship_videos/new
  def new
    @morning_worship_video = MorningWorshipVideo.new
  end

  # GET /morning_worship_videos/1/edit
  def edit
  end

  # POST /morning_worship_videos or /morning_worship_videos.json
  def create
    @morning_worship_video = MorningWorshipVideo.new(morning_worship_video_params)

    respond_to do |format|
      if @morning_worship_video.save
        format.html { redirect_to @morning_worship_video, notice: "Morning worship video was successfully created." }
        format.json { render :show, status: :created, location: @morning_worship_video }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @morning_worship_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /morning_worship_videos/1 or /morning_worship_videos/1.json
  def update
    respond_to do |format|
      if @morning_worship_video.update(morning_worship_video_params)
        format.html { redirect_to @morning_worship_video, notice: "Morning worship video was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @morning_worship_video }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @morning_worship_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /morning_worship_videos/1 or /morning_worship_videos/1.json
  def destroy
    @morning_worship_video.destroy!

    respond_to do |format|
      format.html { redirect_to morning_worship_videos_path, notice: "Morning worship video was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_morning_worship_video
      @morning_worship_video = MorningWorshipVideo.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def morning_worship_video_params
      params.expect(morning_worship_video: [ :video_id, :speaker_first_name, :speaker_last_name, :theme, :theme_scripture, :theme_scripture_text ])
    end
end
