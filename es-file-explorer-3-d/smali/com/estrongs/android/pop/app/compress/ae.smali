.class Lcom/estrongs/android/pop/app/compress/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/h;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ae;->a:Lcom/estrongs/android/pop/app/compress/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->a:Lcom/estrongs/android/pop/app/compress/ad;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ad;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/z;->h(Lcom/estrongs/android/pop/app/compress/z;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->a:Lcom/estrongs/android/pop/app/compress/ad;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ad;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/z;->b(Lcom/estrongs/android/pop/app/compress/z;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
