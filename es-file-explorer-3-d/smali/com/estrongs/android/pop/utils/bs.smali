.class public Lcom/estrongs/android/pop/utils/bs;
.super Ljava/lang/Object;


# direct methods
.method public static a()Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    goto :goto_0
.end method
