class ComentariosController < ApplicationController
   def create
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.create(comentario_params)
    redirect_to post_path(@post)
   end
   def destroy
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to post_path(@post)
  end
  private
# Use callbacks to share common setup or constraints between actions.
def set_comentario
@comentario = Comentario.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
def comentario_params
params.require(:comentario).permit(:autor, :conteudo, :post_id)
end
end