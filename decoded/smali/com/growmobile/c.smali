.class Lcom/growmobile/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1022
    and-int/lit8 v0, p0, 0xf

    .line 1024
    packed-switch v0, :pswitch_data_0

    .line 1035
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 1027
    :pswitch_0
    const-string/jumbo v0, "small"

    goto :goto_0

    .line 1029
    :pswitch_1
    const-string/jumbo v0, "normal"

    goto :goto_0

    .line 1031
    :pswitch_2
    const-string/jumbo v0, "large"

    goto :goto_0

    .line 1033
    :pswitch_3
    const-string/jumbo v0, "xlarge"

    goto :goto_0

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static a(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1057
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1058
    const/16 v1, 0x8c

    .line 1059
    const/16 v2, 0xc8

    .line 1061
    if-nez v0, :cond_0

    .line 1063
    const-string/jumbo v0, "unknown"

    .line 1075
    :goto_0
    return-object v0

    .line 1065
    :cond_0
    if-ge v0, v1, :cond_1

    .line 1067
    const-string/jumbo v0, "low"

    goto :goto_0

    .line 1069
    :cond_1
    if-le v0, v2, :cond_2

    .line 1071
    const-string/jumbo v0, "high"

    goto :goto_0

    .line 1075
    :cond_2
    const-string/jumbo v0, "medium"

    goto :goto_0
.end method

.method static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1042
    and-int/lit8 v0, p0, 0x30

    .line 1044
    sparse-switch v0, :sswitch_data_0

    .line 1051
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 1047
    :sswitch_0
    const-string/jumbo v0, "long"

    goto :goto_0

    .line 1049
    :sswitch_1
    const-string/jumbo v0, "normal"

    goto :goto_0

    .line 1044
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method static b(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1081
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
