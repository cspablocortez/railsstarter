class TikTokPostsController < ApplicationController
  before_action :set_tik_tok_post, only: %i[ show edit update destroy ]

  # GET /tik_tok_posts or /tik_tok_posts.json
  def index
    @tik_tok_posts = TikTokPost.all
  end

  # GET /tik_tok_posts/1 or /tik_tok_posts/1.json
  def show
  end

  # GET /tik_tok_posts/new
  def new
    @tik_tok_post = TikTokPost.new
  end

  # GET /tik_tok_posts/1/edit
  def edit
  end

  # POST /tik_tok_posts or /tik_tok_posts.json
  def create
    @tik_tok_post = TikTokPost.new(tik_tok_post_params)

    respond_to do |format|
      if @tik_tok_post.save
        format.html { redirect_to tik_tok_post_url(@tik_tok_post), notice: "Tik tok post was successfully created." }
        format.json { render :show, status: :created, location: @tik_tok_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tik_tok_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tik_tok_posts/1 or /tik_tok_posts/1.json
  def update
    respond_to do |format|
      if @tik_tok_post.update(tik_tok_post_params)
        format.html { redirect_to tik_tok_post_url(@tik_tok_post), notice: "Tik tok post was successfully updated." }
        format.json { render :show, status: :ok, location: @tik_tok_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tik_tok_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tik_tok_posts/1 or /tik_tok_posts/1.json
  def destroy
    @tik_tok_post.destroy!

    respond_to do |format|
      format.html { redirect_to tik_tok_posts_url, notice: "Tik tok post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tik_tok_post
      @tik_tok_post = TikTokPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tik_tok_post_params
      params.require(:tik_tok_post).permit(:caption, :author, :views, :likes)
    end
end
