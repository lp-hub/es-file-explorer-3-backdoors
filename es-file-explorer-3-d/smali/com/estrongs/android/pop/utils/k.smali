.class Lcom/estrongs/android/pop/utils/k;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/pop/utils/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/k;->d:Lcom/estrongs/android/pop/utils/c;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/k;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/k;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/utils/k;->a:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "charset_name"

    sget-object v2, Lcom/estrongs/android/util/g;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "password"

    const-string v2, "s!*123.estrongs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/k;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/io/archive/c;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/utils/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/l;-><init>(Lcom/estrongs/android/pop/utils/k;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/h;->a(Lcom/estrongs/io/a/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/utils/k;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/estrongs/android/pop/utils/k;->a:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/k;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/k;->b:Landroid/content/Context;

    const v1, 0x7f0b0168

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/utils/k;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/utils/k;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/k;->b:Landroid/content/Context;

    const v1, 0x7f0b03f2

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    return-void
.end method
