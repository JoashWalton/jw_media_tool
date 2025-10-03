class VideoTechnicalDetailsController < ApplicationController
  before_action :set_video_technical_detail, only: %i[ show edit update destroy ]

  # GET /video_technical_details or /video_technical_details.json
  def index
    @video_technical_details = VideoTechnicalDetail.all
  end

  # GET /video_technical_details/1 or /video_technical_details/1.json
  def show
  end

  # GET /video_technical_details/new
  def new
    @video_technical_detail = VideoTechnicalDetail.new
  end

  # GET /video_technical_details/1/edit
  def edit
  end

  # POST /video_technical_details or /video_technical_details.json
  def create
    @video_technical_detail = VideoTechnicalDetail.new(video_technical_detail_params)

    respond_to do |format|
      if @video_technical_detail.save
        format.html { redirect_to @video_technical_detail, notice: "Video technical detail was successfully created." }
        format.json { render :show, status: :created, location: @video_technical_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @video_technical_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_technical_details/1 or /video_technical_details/1.json
  def update
    respond_to do |format|
      if @video_technical_detail.update(video_technical_detail_params)
        format.html { redirect_to @video_technical_detail, notice: "Video technical detail was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @video_technical_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @video_technical_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_technical_details/1 or /video_technical_details/1.json
  def destroy
    @video_technical_detail.destroy!

    respond_to do |format|
      format.html { redirect_to video_technical_details_path, notice: "Video technical detail was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_technical_detail
      @video_technical_detail = VideoTechnicalDetail.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def video_technical_detail_params
      params.expect(video_technical_detail: [ :video_id, :duration, :bitrate, :file_size, :video_stream, :video_codec, :resolution, :width, :height, :frame_rate, :audio_stream, :audio_codec, :audio_sample_rate, :audio_channels ])
    end
end
