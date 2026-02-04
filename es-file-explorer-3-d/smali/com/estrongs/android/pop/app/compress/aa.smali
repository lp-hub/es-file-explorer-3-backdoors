.class Lcom/estrongs/android/pop/app/compress/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/aa;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aa;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/z;->a(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aa;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/z;->a(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/b;->d()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aa;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/z;->a()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
