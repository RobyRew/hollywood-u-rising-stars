.class public final Lcom/adjust/sdk/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 133
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adjust/sdk/R$styleable;->LoadingImageView:[I

    .line 137
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/adjust/sdk/R$styleable;->SignInButton:[I

    return-void

    .line 133
    :array_0
    .array-data 4
        0x7f010115
        0x7f010116
        0x7f010117
    .end array-data

    .line 137
    :array_1
    .array-data 4
        0x7f01014d
        0x7f01014e
        0x7f01014f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
