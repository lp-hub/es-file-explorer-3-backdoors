.class Lcom/estrongs/android/ui/a/bz;
.super Lcom/estrongs/android/ui/a/a;


# instance fields
.field final synthetic h:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bz;->h:Lcom/estrongs/android/ui/a/s;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bz;->h:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->c(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
