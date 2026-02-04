.class Lcom/estrongs/android/ui/pcs/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ca;->a:Lcom/estrongs/android/ui/pcs/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ca;->a:Lcom/estrongs/android/ui/pcs/bz;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bz;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->j(Lcom/estrongs/android/ui/pcs/bt;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ca;->a:Lcom/estrongs/android/ui/pcs/bz;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bz;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->h(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ca;->a:Lcom/estrongs/android/ui/pcs/bz;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bz;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->h(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ca;->a:Lcom/estrongs/android/ui/pcs/bz;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bz;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->k(Lcom/estrongs/android/ui/pcs/bt;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ca;->a:Lcom/estrongs/android/ui/pcs/bz;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bz;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bt;->h(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ca;->a:Lcom/estrongs/android/ui/pcs/bz;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bz;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/ui/pcs/bt;)V

    return-void
.end method
