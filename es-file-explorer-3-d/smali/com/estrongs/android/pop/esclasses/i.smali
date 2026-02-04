.class public Lcom/estrongs/android/pop/esclasses/i;
.super Landroid/content/res/Resources;


# static fields
.field private static a:Lcom/estrongs/android/pop/esclasses/i;

.field private static b:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/esclasses/i;->a:Lcom/estrongs/android/pop/esclasses/i;

    sput-object v0, Lcom/estrongs/android/pop/esclasses/i;->b:Landroid/content/res/Resources;

    return-void
.end method

.method protected constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object p1, Lcom/estrongs/android/pop/esclasses/i;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-super {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v0, Lcom/estrongs/android/util/aj;

    invoke-direct {v0, p1}, Lcom/estrongs/android/util/aj;-><init>(Ljava/lang/Object;)V

    const-string v1, "getCompatibilityInfo"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/util/aj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/util/aj;-><init>(Ljava/lang/Object;)V

    const-string v2, "setCompatibilityInfo"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/i;
    .locals 2

    const-class v1, Lcom/estrongs/android/pop/esclasses/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/i;->a:Lcom/estrongs/android/pop/esclasses/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/esclasses/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/i;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/estrongs/android/pop/esclasses/i;->a:Lcom/estrongs/android/pop/esclasses/i;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/i;->a:Lcom/estrongs/android/pop/esclasses/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(I)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    const-string v2, "it"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    const-string v2, "tw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    const-string v2, "cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/i;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "help_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "index"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/i;->b:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/i;->b:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/esclasses/i;->b:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/esclasses/i;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/c;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/m;->E:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WLAN"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/c;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/m;->E:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WLAN"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/c;->c(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/c;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/m;->E:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WLAN"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/c;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/m;->E:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WLAN"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/c;->d(I)[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    return-void
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/esclasses/i;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/i;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/i;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/i;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/theme/al;->a(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
