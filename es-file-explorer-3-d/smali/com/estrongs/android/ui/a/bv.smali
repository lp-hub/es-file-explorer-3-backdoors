.class Lcom/estrongs/android/ui/a/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/bt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v2, Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v0}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b01e1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/b/ag;->setTitle(I)V

    invoke-virtual {v2, v6}, Lcom/estrongs/android/ui/b/ag;->setSelectable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bt;->b:Lcom/estrongs/android/ui/theme/al;

    const v1, 0x7f020277

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x7

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bt;->b:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f020277

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v6

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bt;->b:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f020249

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bt;->b:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f020239

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v8

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bt;->b:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f020290

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v9

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bt;->b:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f02028c

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v10

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v4, v4, Lcom/estrongs/android/ui/a/bt;->b:Lcom/estrongs/android/ui/theme/al;

    const v5, 0x7f020268

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v4, v4, Lcom/estrongs/android/ui/a/bt;->b:Lcom/estrongs/android/ui/theme/al;

    const v5, 0x7f02023e

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f0b037a

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f0b037b

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f0b037c

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f0b037d

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    iget-object v3, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f0b037e

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v10

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v4, v4, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v5, 0x7f0b0380

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v5, v5, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b0019

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/a/bv;->a:Lcom/estrongs/android/ui/a/bt;

    iget-object v5, v5, Lcom/estrongs/android/ui/a/bt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f0b02df

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, -0x1

    new-instance v4, Lcom/estrongs/android/ui/a/bw;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/a/bw;-><init>(Lcom/estrongs/android/ui/a/bv;)V

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/estrongs/android/ui/b/ag;->setItems([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method
