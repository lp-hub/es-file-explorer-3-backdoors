.class Lcom/estrongs/android/pop/app/fy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/bt;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/pop/app/fw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/fw;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fy;->b:Lcom/estrongs/android/pop/app/fw;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/fy;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/g;)V
    .locals 2

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/fy;->b:Lcom/estrongs/android/pop/app/fw;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/fw;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fy;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->i()V

    return-void
.end method
