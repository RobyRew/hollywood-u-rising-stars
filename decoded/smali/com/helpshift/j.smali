.class public final Lcom/helpshift/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/helpshift/er;->hs__notification_content_title:I

    sput v0, Lcom/helpshift/j;->a:I

    .line 159
    sget v0, Lcom/helpshift/er;->hs__csat_rating_value:I

    sput v0, Lcom/helpshift/j;->b:I

    return-void
.end method
