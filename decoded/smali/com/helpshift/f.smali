.class public final Lcom/helpshift/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/helpshift/en;->hs__actionbar_compat_button_width:I

    sput v0, Lcom/helpshift/f;->a:I

    .line 164
    sget v0, Lcom/helpshift/en;->hs__actionbar_compat_height:I

    sput v0, Lcom/helpshift/f;->b:I

    return-void
.end method
