.class Lcom/estrongs/android/pop/app/compress/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/an;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/an;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ao;->a:Lcom/estrongs/android/pop/app/compress/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ao;->a:Lcom/estrongs/android/pop/app/compress/an;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/compress/an;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ao;->a:Lcom/estrongs/android/pop/app/compress/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/an;->dismiss()V

    return-void
.end method
