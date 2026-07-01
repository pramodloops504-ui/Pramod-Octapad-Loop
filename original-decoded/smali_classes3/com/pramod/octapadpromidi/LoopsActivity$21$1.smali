.class Lcom/pramod/octapadpromidi/LoopsActivity$21$1;
.super Landroid/media/midi/MidiReceiver;
.source "LoopsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/octapadpromidi/LoopsActivity$21;->onDeviceOpened(Landroid/media/midi/MidiDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/pramod/octapadpromidi/LoopsActivity$21;


# direct methods
.method constructor <init>(Lcom/pramod/octapadpromidi/LoopsActivity$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/pramod/octapadpromidi/LoopsActivity$21;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/pramod/octapadpromidi/LoopsActivity$21$1;->this$1:Lcom/pramod/octapadpromidi/LoopsActivity$21;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 6
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    add-int v0, p2, p3

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_6

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    and-int/lit16 v4, v1, 0xf0

    const/16 v5, 0x90

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v2, 0x1

    if-lt v4, v0, :cond_1

    goto :goto_2

    :cond_1
    int-to-byte v4, v3

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    if-lez v5, :cond_2

    sget-object v3, Lcom/pramod/octapadpromidi/LoopsActivity;->globalInstance:Lcom/pramod/octapadpromidi/LoopsActivity;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4, v5}, Lcom/pramod/octapadpromidi/LoopsActivity;->handleMidiNoteOn(BB)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    and-int/lit16 v4, v1, 0xf0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/pramod/octapadpromidi/LoopsActivity;->globalInstance:Lcom/pramod/octapadpromidi/LoopsActivity;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v3}, Lcom/pramod/octapadpromidi/LoopsActivity;->handleProgramChange(I)V

    goto :goto_1

    :cond_4
    and-int/lit16 v4, v1, 0xf0

    const/16 v5, 0x80

    if-ne v4, v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method
