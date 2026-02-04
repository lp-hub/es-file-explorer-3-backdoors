.class Lcom/estrongs/android/ui/a/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

.field final synthetic b:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v1

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0b034c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->K(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->M(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v0

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0b034c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/a/bp;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/a/bp;->b:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
