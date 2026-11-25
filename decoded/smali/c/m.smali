.class public final Lc/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# static fields
.field public static a:I = 0x54

.field public static b:I = 0x0

.field public static c:I = 0x1

.field public static d:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 2

    sget v0, Lc/m;->a:I

    sget v1, Lc/m;->c:I

    add-int/2addr v0, v1

    sget v1, Lc/m;->a:I

    mul-int/2addr v0, v1

    invoke-static {}, Lc/m;->a()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lc/m;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lc/m;->b()I

    move-result v0

    sput v0, Lc/m;->a:I

    invoke-static {}, Lc/m;->b()I

    move-result v0

    sput v0, Lc/m;->b:I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public static c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 3

    new-instance v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-static {}, Lc/m;->b()I

    move-result v1

    invoke-static {}, Lc/m;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lc/m;->b()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lc/m;->d:I

    rem-int/2addr v1, v2

    sget v2, Lc/m;->b:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lc/m;->b()I

    move-result v1

    sput v1, Lc/m;->a:I

    invoke-static {}, Lc/m;->b()I

    move-result v1

    sput v1, Lc/m;->b:I

    :cond_0
    invoke-direct {v0, p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;-><init>(Landroid/os/Parcel;)V

    :pswitch_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)[Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 3

    const/4 v0, 0x1

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    new-array v0, p1, [Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    sget v1, Lc/m;->a:I

    sget v2, Lc/m;->c:I

    add-int/2addr v1, v2

    sget v2, Lc/m;->a:I

    mul-int/2addr v1, v2

    sget v2, Lc/m;->d:I

    rem-int/2addr v1, v2

    sget v2, Lc/m;->b:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x20

    sput v1, Lc/m;->a:I

    const/16 v1, 0x50

    sput v1, Lc/m;->b:I

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lc/m;->a(Landroid/os/Parcel;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sget v1, Lc/m;->a:I

    sget v2, Lc/m;->c:I

    add-int/2addr v1, v2

    sget v2, Lc/m;->a:I

    mul-int/2addr v1, v2

    invoke-static {}, Lc/m;->a()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {}, Lc/m;->d()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x2e

    sput v1, Lc/m;->a:I

    invoke-static {}, Lc/m;->b()I

    move-result v1

    sput v1, Lc/m;->b:I

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x1

    sget v0, Lc/m;->a:I

    sget v1, Lc/m;->c:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lc/m;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lc/m;->b()I

    move-result v0

    sput v0, Lc/m;->a:I

    const/16 v0, 0x2f

    sput v0, Lc/m;->b:I

    :pswitch_0
    invoke-virtual {p0, p1}, Lc/m;->a(I)[Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    move-result-object v0

    :pswitch_1
    packed-switch v2, :pswitch_data_1

    :goto_0
    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
