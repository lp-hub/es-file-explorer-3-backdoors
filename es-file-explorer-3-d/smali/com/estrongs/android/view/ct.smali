.class Lcom/estrongs/android/view/ct;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ct;->a:Lcom/estrongs/android/view/cs;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ct;->a:Lcom/estrongs/android/view/cs;

    iget-object v0, v0, Lcom/estrongs/android/view/cs;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
